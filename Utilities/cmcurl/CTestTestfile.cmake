# CMake generated Testfile for 
# Source directory: /workspaces/CMake/Utilities/cmcurl
# Build directory: /workspaces/CMake/Utilities/cmcurl
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[curl]=] "curltest" "http://open.cdash.org/user.php")
set_tests_properties([=[curl]=] PROPERTIES  _BACKTRACE_TRIPLES "/workspaces/CMake/Utilities/cmcurl/CMakeLists.txt;2096;add_test;/workspaces/CMake/Utilities/cmcurl/CMakeLists.txt;0;")
subdirs("lib")
