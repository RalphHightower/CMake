# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /workspaces/CMake/Bootstrap.cmk/cmake

# The command to remove a file.
RM = /workspaces/CMake/Bootstrap.cmk/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /workspaces/CMake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /workspaces/CMake

# Include any dependencies generated for this target.
include Source/CMakeFiles/ctest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Source/CMakeFiles/ctest.dir/compiler_depend.make

# Include the progress variables for this target.
include Source/CMakeFiles/ctest.dir/progress.make

# Include the compile flags for this target's objects.
include Source/CMakeFiles/ctest.dir/flags.make

Source/CMakeFiles/ctest.dir/codegen:
.PHONY : Source/CMakeFiles/ctest.dir/codegen

Source/CMakeFiles/ctest.dir/ctest.cxx.o: Source/CMakeFiles/ctest.dir/flags.make
Source/CMakeFiles/ctest.dir/ctest.cxx.o: Source/ctest.cxx
Source/CMakeFiles/ctest.dir/ctest.cxx.o: Source/CMakeFiles/ctest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/workspaces/CMake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Source/CMakeFiles/ctest.dir/ctest.cxx.o"
	cd /workspaces/CMake/Source && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Source/CMakeFiles/ctest.dir/ctest.cxx.o -MF CMakeFiles/ctest.dir/ctest.cxx.o.d -o CMakeFiles/ctest.dir/ctest.cxx.o -c /workspaces/CMake/Source/ctest.cxx

Source/CMakeFiles/ctest.dir/ctest.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ctest.dir/ctest.cxx.i"
	cd /workspaces/CMake/Source && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspaces/CMake/Source/ctest.cxx > CMakeFiles/ctest.dir/ctest.cxx.i

Source/CMakeFiles/ctest.dir/ctest.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ctest.dir/ctest.cxx.s"
	cd /workspaces/CMake/Source && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspaces/CMake/Source/ctest.cxx -o CMakeFiles/ctest.dir/ctest.cxx.s

# Object files for target ctest
ctest_OBJECTS = \
"CMakeFiles/ctest.dir/ctest.cxx.o"

# External object files for target ctest
ctest_EXTERNAL_OBJECTS =

bin/ctest: Source/CMakeFiles/ctest.dir/ctest.cxx.o
bin/ctest: Source/CMakeFiles/ctest.dir/build.make
bin/ctest: Source/libCTestLib.a
bin/ctest: Source/libCMakeLib.a
bin/ctest: Utilities/std/libcmstd.a
bin/ctest: Source/kwsys/libcmsys.a
bin/ctest: Utilities/cmcurl/lib/libcmcurl.a
bin/ctest: /usr/lib/x86_64-linux-gnu/libidn2.so
bin/ctest: Utilities/cmnghttp2/libcmnghttp2.a
bin/ctest: Utilities/cmexpat/libcmexpat.a
bin/ctest: Utilities/cmlibarchive/libarchive/libcmlibarchive.a
bin/ctest: /usr/lib/x86_64-linux-gnu/libssl.so
bin/ctest: /usr/lib/x86_64-linux-gnu/libcrypto.so
bin/ctest: Utilities/cmbzip2/libcmbzip2.a
bin/ctest: Utilities/cmliblzma/libcmliblzma.a
bin/ctest: Utilities/cmzstd/libcmzstd.a
bin/ctest: Utilities/cmlibrhash/libcmlibrhash.a
bin/ctest: Utilities/cmlibuv/libcmlibuv.a
bin/ctest: Utilities/cmzlib/libcmzlib.a
bin/ctest: Utilities/cmllpkgc/libcmllpkgc.a
bin/ctest: Utilities/cmcppdap/libcmcppdap.a
bin/ctest: Utilities/cmjsoncpp/libcmjsoncpp.a
bin/ctest: Source/CMakeFiles/ctest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/workspaces/CMake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/ctest"
	cd /workspaces/CMake/Source && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ctest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Source/CMakeFiles/ctest.dir/build: bin/ctest
.PHONY : Source/CMakeFiles/ctest.dir/build

Source/CMakeFiles/ctest.dir/clean:
	cd /workspaces/CMake/Source && $(CMAKE_COMMAND) -P CMakeFiles/ctest.dir/cmake_clean.cmake
.PHONY : Source/CMakeFiles/ctest.dir/clean

Source/CMakeFiles/ctest.dir/depend:
	cd /workspaces/CMake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/CMake /workspaces/CMake/Source /workspaces/CMake /workspaces/CMake/Source /workspaces/CMake/Source/CMakeFiles/ctest.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : Source/CMakeFiles/ctest.dir/depend

