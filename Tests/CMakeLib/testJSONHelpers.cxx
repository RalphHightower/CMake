#include <list>
#include <map>
#include <string>
#include <unordered_map>
#include <utility>
#include <vector>

#include <cm/optional>
#include <cmext/string_view>

#include <cm3p/json/value.h>

#include "cmJSONHelpers.h"
#include "cmJSONState.h"

#include "testCommon.h"

namespace {
struct ObjectStruct
{
  std::string Field1;
  int Field2;
};

struct InheritedStruct : public ObjectStruct
{
  std::string Field3;
};

namespace ErrorMessages {
using ErrorGenerator =
  std::function<void(Json::Value const*, cmJSONState* state)>;
ErrorGenerator ErrorGeneratorBuilder(std::string errorMessage)
{
  return [errorMessage](Json::Value const* value, cmJSONState* state) -> void {
    state->AddErrorAtValue(errorMessage, value);
  };
};
ErrorGenerator InvalidArray = ErrorGeneratorBuilder("Invalid Array");
ErrorGenerator MissingRequired = ErrorGeneratorBuilder("Missing Required");
ErrorGenerator InvalidMap = ErrorGeneratorBuilder("Invalid Map");
ErrorGenerator FaultyObjectProperty =
  ErrorGeneratorBuilder("Faulty Object Property");
ErrorGenerator InvalidObject(JsonErrors::ObjectError /*errorType*/,
                             Json::Value::Members const& extraFields)
{
  return [extraFields](Json::Value const* value, cmJSONState* state) -> void {
    state->AddErrorAtValue("Invalid Object", value);
  };
};
};

using JSONHelperBuilder = cmJSONHelperBuilder;

auto const IntHelper = JSONHelperBuilder::Int(1);
auto const RequiredIntHelper =
  JSONHelperBuilder::Required<int>(ErrorMessages::MissingRequired, IntHelper);
auto const UIntHelper = JSONHelperBuilder::UInt(1);
auto const BoolHelper = JSONHelperBuilder::Bool(false);
auto const StringHelper = JSONHelperBuilder::String("default");
auto const RequiredStringHelper = JSONHelperBuilder::Required<std::string>(
  ErrorMessages::MissingRequired, StringHelper);
auto const StringVectorHelper = JSONHelperBuilder::Vector<std::string>(
  ErrorMessages::InvalidArray, StringHelper);
auto const StringVectorFilterHelper =
  JSONHelperBuilder::VectorFilter<std::string>(
    ErrorMessages::InvalidArray, StringHelper,
    [](std::string const& value) { return value != "ignore"; });
auto const StringMapHelper =
  JSONHelperBuilder::Map<std::string>(ErrorMessages::InvalidMap, StringHelper);
auto const StringMapFilterHelper = JSONHelperBuilder::MapFilter<std::string>(
  ErrorMessages::InvalidMap, StringHelper,
  [](std::string const& key) { return key != "ignore"; });
auto const OptionalStringHelper =
  JSONHelperBuilder::Optional<std::string>(StringHelper);

bool testInt()
{
  Json::Value v(2);
  cmJSONState state;
  int i = 0;
  ASSERT_TRUE(IntHelper(i, &v, &state));
  ASSERT_TRUE(i == 2);

  i = 0;
  v = Json::nullValue;
  ASSERT_TRUE(!IntHelper(i, &v, &state));

  i = 0;
  ASSERT_TRUE(IntHelper(i, nullptr, &state));
  ASSERT_TRUE(i == 1);

  return true;
}

bool testUInt()
{
  Json::Value v(2);
  cmJSONState state;
  unsigned int i = 0;
  ASSERT_TRUE(UIntHelper(i, &v, &state));
  ASSERT_TRUE(i == 2);
  i = 0;
  v = Json::nullValue;
  ASSERT_TRUE(!UIntHelper(i, &v, &state));

  i = 0;
  ASSERT_TRUE(UIntHelper(i, nullptr, &state));
  ASSERT_TRUE(i == 1);

  return true;
}

bool testBool()
{
  Json::Value v(true);
  cmJSONState state;
  bool b = false;
  ASSERT_TRUE(BoolHelper(b, &v, &state));
  ASSERT_TRUE(b);

  b = false;
  v = false;
  ASSERT_TRUE(BoolHelper(b, &v, &state));
  ASSERT_TRUE(!b);

  b = false;
  v = 4;
  ASSERT_TRUE(!BoolHelper(b, &v, &state));

  b = true;
  ASSERT_TRUE(BoolHelper(b, nullptr, &state));
  ASSERT_TRUE(!b);

  return true;
}

bool testString()
{
  Json::Value v("str");
  cmJSONState state;
  std::string str = "";
  ASSERT_TRUE(StringHelper(str, &v, &state));
  ASSERT_TRUE(str == "str");

  str = "";
  v = Json::nullValue;
  ASSERT_TRUE(!StringHelper(str, &v, &state));

  str = "";
  ASSERT_TRUE(StringHelper(str, nullptr, &state));
  ASSERT_TRUE(str == "default");

  return true;
}

bool testObject()
{
  auto const subhelper = JSONHelperBuilder::Object<ObjectStruct>().Bind(
    "subfield"_s, &ObjectStruct::Field2, IntHelper);
  auto const helper = JSONHelperBuilder::Object<ObjectStruct>()
                        .Bind("field1"_s, &ObjectStruct::Field1, StringHelper)
                        .Bind("field2"_s, subhelper)
                        .Bind<std::string>("field3"_s, nullptr, StringHelper);

  Json::Value v(Json::objectValue);
  cmJSONState state;
  v["field1"] = "Hello";
  v["field2"] = Json::objectValue;
  v["field2"]["subfield"] = 2;
  v["field3"] = "world!";
  v["extra"] = "extra";

  ObjectStruct s1;
  ASSERT_TRUE(helper(s1, &v, &state));
  ASSERT_TRUE(s1.Field1 == "Hello");
  ASSERT_TRUE(s1.Field2 == 2);

  v["field2"]["subfield"] = "wrong";
  ObjectStruct s2;
  ASSERT_TRUE(!helper(s2, &v, &state));

  v["field2"].removeMember("subfield");
  ObjectStruct s3;
  ASSERT_TRUE(!helper(s3, &v, &state));

  v.removeMember("field2");
  ObjectStruct s4;
  ASSERT_TRUE(!helper(s4, &v, &state));

  v["field2"] = Json::objectValue;
  v["field2"]["subfield"] = 2;
  v["field3"] = 3;
  ObjectStruct s5;
  ASSERT_TRUE(!helper(s5, &v, &state));

  v.removeMember("field3");
  ObjectStruct s6;
  ASSERT_TRUE(!helper(s6, &v, &state));

  v = "Hello";
  ObjectStruct s7;
  ASSERT_TRUE(!helper(s7, &v, &state));

  ObjectStruct s8;
  ASSERT_TRUE(!helper(s8, nullptr, &state));

  return true;
}

bool testObjectInherited()
{
  auto const helper =
    JSONHelperBuilder::Object<InheritedStruct>(ErrorMessages::InvalidObject,
                                               true)
      .Bind("field1"_s, &InheritedStruct::Field1, StringHelper)
      .Bind("field2"_s, &InheritedStruct::Field2, IntHelper)
      .Bind("field3"_s, &InheritedStruct::Field3, StringHelper);

  Json::Value v(Json::objectValue);
  cmJSONState state;
  v["field1"] = "Hello";
  v["field2"] = 2;
  v["field3"] = "world!";
  v["extra"] = "extra";

  InheritedStruct s1;
  ASSERT_TRUE(helper(s1, &v, &state));
  ASSERT_TRUE(s1.Field1 == "Hello");
  ASSERT_TRUE(s1.Field2 == 2);
  ASSERT_TRUE(s1.Field3 == "world!");

  v["field2"] = "wrong";
  InheritedStruct s2;
  ASSERT_TRUE(!helper(s2, &v, &state));

  v.removeMember("field2");
  InheritedStruct s3;
  ASSERT_TRUE(!helper(s3, &v, &state));

  v["field2"] = 2;
  v["field3"] = 3;
  InheritedStruct s4;
  ASSERT_TRUE(!helper(s4, &v, &state));

  v.removeMember("field3");
  InheritedStruct s5;
  ASSERT_TRUE(!helper(s5, &v, &state));

  v = "Hello";
  InheritedStruct s6;
  ASSERT_TRUE(!helper(s6, &v, &state));

  InheritedStruct s7;
  ASSERT_TRUE(!helper(s7, nullptr, &state));

  return true;
}

bool testObjectNoExtra()
{
  auto const helper = JSONHelperBuilder::Object<ObjectStruct>(
                        ErrorMessages::InvalidObject, false)
                        .Bind("field1"_s, &ObjectStruct::Field1, StringHelper)
                        .Bind("field2"_s, &ObjectStruct::Field2, IntHelper);

  Json::Value v(Json::objectValue);
  cmJSONState state;
  v["field1"] = "Hello";
  v["field2"] = 2;

  ObjectStruct s1;
  ASSERT_TRUE(helper(s1, &v, &state));
  ASSERT_TRUE(s1.Field1 == "Hello");
  ASSERT_TRUE(s1.Field2 == 2);

  v["extra"] = "world!";
  ObjectStruct s2;
  ASSERT_TRUE(!helper(s2, &v, &state));

  return true;
}

bool testObjectOptional()
{
  auto const helper =
    JSONHelperBuilder::Object<ObjectStruct>(ErrorMessages::InvalidObject, true)
      .Bind("field1"_s, &ObjectStruct::Field1, StringHelper, false)
      .Bind("field2"_s, &ObjectStruct::Field2, IntHelper, false)
      .Bind<std::string>("field3_s", nullptr, StringHelper, false);

  Json::Value v(Json::objectValue);
  cmJSONState state;
  v["field1"] = "Hello";
  v["field2"] = 2;
  v["field3"] = "world!";
  v["extra"] = "extra";

  ObjectStruct s1;
  ASSERT_TRUE(helper(s1, &v, &state));
  ASSERT_TRUE(s1.Field1 == "Hello");
  ASSERT_TRUE(s1.Field2 == 2);

  v = Json::objectValue;
  ObjectStruct s2;
  ASSERT_TRUE(helper(s2, &v, &state));
  ASSERT_TRUE(s2.Field1 == "default");
  ASSERT_TRUE(s2.Field2 == 1);

  ObjectStruct s3;
  ASSERT_TRUE(helper(s3, nullptr, &state));
  ASSERT_TRUE(s3.Field1 == "default");
  ASSERT_TRUE(s3.Field2 == 1);

  return true;
}

bool testVector()
{
  Json::Value v(Json::arrayValue);
  cmJSONState state;
  v.append("Hello");
  v.append("world!");
  v.append("ignore");

  std::vector<std::string> l{ "default" };
  std::vector<std::string> expected{ "Hello", "world!", "ignore" };
  ASSERT_TRUE(StringVectorHelper(l, &v, &state));
  ASSERT_TRUE(l == expected);

  v[1] = 2;
  l = { "default" };
  ASSERT_TRUE(!StringVectorHelper(l, &v, &state));

  v = "Hello";
  l = { "default" };
  ASSERT_TRUE(!StringVectorHelper(l, &v, &state));

  l = { "default" };
  ASSERT_TRUE(StringVectorHelper(l, nullptr, &state));
  ASSERT_TRUE(l.empty());

  return true;
}

bool testVectorFilter()
{
  Json::Value v(Json::arrayValue);
  cmJSONState state;
  v.append("Hello");
  v.append("world!");
  v.append("ignore");

  std::vector<std::string> l{ "default" };
  std::vector<std::string> expected{
    "Hello",
    "world!",
  };
  ASSERT_TRUE(StringVectorFilterHelper(l, &v, &state));
  ASSERT_TRUE(l == expected);

  v[1] = 2;
  l = { "default" };
  ASSERT_TRUE(!StringVectorFilterHelper(l, &v, &state));

  v = "Hello";
  l = { "default" };
  ASSERT_TRUE(!StringVectorFilterHelper(l, &v, &state));

  l = { "default" };
  ASSERT_TRUE(StringVectorFilterHelper(l, nullptr, &state));
  ASSERT_TRUE(l.empty());

  return true;
}

bool testMap()
{
  Json::Value v(Json::objectValue);
  v["field1"] = "Hello";
  v["field2"] = "world!";
  v["ignore"] = "ignore";
  cmJSONState state;

  std::map<std::string, std::string> m{ { "key", "default" } };
  std::map<std::string, std::string> expected{ { "field1", "Hello" },
                                               { "field2", "world!" },
                                               { "ignore", "ignore" } };
  ASSERT_TRUE(StringMapHelper(m, &v, &state));
  ASSERT_TRUE(m == expected);

  v = Json::arrayValue;
  m = { { "key", "default" } };
  ASSERT_TRUE(!StringMapHelper(m, &v, &state));

  m = { { "key", "default" } };
  ASSERT_TRUE(StringMapHelper(m, nullptr, &state));
  ASSERT_TRUE(m.empty());

  return true;
}

bool testMapFilter()
{
  Json::Value v(Json::objectValue);
  cmJSONState state;
  v["field1"] = "Hello";
  v["field2"] = "world!";
  v["ignore"] = "ignore";

  std::map<std::string, std::string> m{ { "key", "default" } };
  std::map<std::string, std::string> expected{ { "field1", "Hello" },
                                               { "field2", "world!" } };
  ASSERT_TRUE(StringMapFilterHelper(m, &v, &state));
  ASSERT_TRUE(m == expected);

  v = Json::arrayValue;
  m = { { "key", "default" } };
  ASSERT_TRUE(!StringMapFilterHelper(m, &v, &state));

  m = { { "key", "default" } };
  ASSERT_TRUE(StringMapFilterHelper(m, nullptr, &state));
  ASSERT_TRUE(m.empty());

  return true;
}

bool testOptional()
{
  Json::Value v = "Hello";
  cmJSONState state;

  cm::optional<std::string> str{ "default" };
  ASSERT_TRUE(OptionalStringHelper(str, &v, &state));
  ASSERT_TRUE(str == "Hello");

  str.emplace("default");
  ASSERT_TRUE(OptionalStringHelper(str, nullptr, &state));
  ASSERT_TRUE(str == cm::nullopt);

  return true;
}

bool testRequired()
{
  Json::Value v = "Hello";
  std::string str = "default";
  int i = 1;
  cmJSONState state;
  ASSERT_TRUE(RequiredStringHelper(str, &v, &state));
  ASSERT_TRUE(str == "Hello");
  ASSERT_TRUE(!RequiredIntHelper(i, &v, &state));

  v = 2;
  str = "default";
  i = 1;
  ASSERT_TRUE(!RequiredStringHelper(str, &v, &state));
  ASSERT_TRUE(RequiredIntHelper(i, &v, &state));
  ASSERT_TRUE(i == 2);

  str = "default";
  i = 1;
  ASSERT_TRUE(!RequiredStringHelper(str, nullptr, &state));
  ASSERT_TRUE(!RequiredIntHelper(i, nullptr, &state));

  return true;
}

JSONHelperBuilder::FilterResult ObjectPropsFilter(std::string const& key,
                                                  Json::Value const* value,
                                                  cmJSONState* state)
{
  if (key == "ignore") {
    return JSONHelperBuilder::FilterResult::Skip;
  }
  if (value->isString() && value->asString() == "ignore") {
    return JSONHelperBuilder::FilterResult::Skip;
  }
  if (key == "zerror") {
    ErrorMessages::FaultyObjectProperty(value, state);
    return JSONHelperBuilder::FilterResult::Error;
  }
  return JSONHelperBuilder::FilterResult::Continue;
}

template <typename Container>
bool testFilteredObject()
{
  auto const FilteredObjectHelper =
    JSONHelperBuilder::FilteredObject<Container>(
      ErrorMessages::InvalidMap, StringHelper, ObjectPropsFilter);

  Json::Value v(Json::objectValue);
  cmJSONState state;
  v["field1"] = "Hello";
  v["field2"] = "world!";
  v["ignore"] = "any";
  v["any"] = "ignore";
  v["zerror"] = "error";

  Container m{ { "key", "default" } };
  Container expected{ { "field1", "Hello" }, { "field2", "world!" } };

  ASSERT_TRUE(!FilteredObjectHelper(m, &v, &state));
  ASSERT_TRUE(m == expected);

  auto error = state.GetErrorMessage();
  ASSERT_TRUE(error == "Faulty Object Property");

  return true;
}
}

int testJSONHelpers(int /*unused*/, char* /*unused*/[])
{
  return runTests({
    testInt,
    testUInt,
    testBool,
    testString,
    testObject,
    testObjectInherited,
    testObjectNoExtra,
    testObjectOptional,
    testVector,
    testVectorFilter,
    testMap,
    testMapFilter,
    testOptional,
    testRequired,
    testFilteredObject<std::map<std::string, std::string>>,
    testFilteredObject<std::unordered_map<std::string, std::string>>,
    testFilteredObject<std::vector<std::pair<std::string, std::string>>>,
    testFilteredObject<std::list<std::pair<std::string, std::string>>>,
  });
}
