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
include Tests/RunCMake/CMakeFiles/pseudo_tidy.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Tests/RunCMake/CMakeFiles/pseudo_tidy.dir/compiler_depend.make

# Include the progress variables for this target.
include Tests/RunCMake/CMakeFiles/pseudo_tidy.dir/progress.make

# Include the compile flags for this target's objects.
include Tests/RunCMake/CMakeFiles/pseudo_tidy.dir/flags.make

Tests/RunCMake/CMakeFiles/pseudo_tidy.dir/codegen:
.PHONY : Tests/RunCMake/CMakeFiles/pseudo_tidy.dir/codegen

Tests/RunCMake/CMakeFiles/pseudo_tidy.dir/pseudo_tidy.c.o: Tests/RunCMake/CMakeFiles/pseudo_tidy.dir/flags.make
Tests/RunCMake/CMakeFiles/pseudo_tidy.dir/pseudo_tidy.c.o: Tests/RunCMake/pseudo_tidy.c
Tests/RunCMake/CMakeFiles/pseudo_tidy.dir/pseudo_tidy.c.o: Tests/RunCMake/CMakeFiles/pseudo_tidy.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/workspaces/CMake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Tests/RunCMake/CMakeFiles/pseudo_tidy.dir/pseudo_tidy.c.o"
	cd /workspaces/CMake/Tests/RunCMake && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT Tests/RunCMake/CMakeFiles/pseudo_tidy.dir/pseudo_tidy.c.o -MF CMakeFiles/pseudo_tidy.dir/pseudo_tidy.c.o.d -o CMakeFiles/pseudo_tidy.dir/pseudo_tidy.c.o -c /workspaces/CMake/Tests/RunCMake/pseudo_tidy.c

Tests/RunCMake/CMakeFiles/pseudo_tidy.dir/pseudo_tidy.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/pseudo_tidy.dir/pseudo_tidy.c.i"
	cd /workspaces/CMake/Tests/RunCMake && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/CMake/Tests/RunCMake/pseudo_tidy.c > CMakeFiles/pseudo_tidy.dir/pseudo_tidy.c.i

Tests/RunCMake/CMakeFiles/pseudo_tidy.dir/pseudo_tidy.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/pseudo_tidy.dir/pseudo_tidy.c.s"
	cd /workspaces/CMake/Tests/RunCMake && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/CMake/Tests/RunCMake/pseudo_tidy.c -o CMakeFiles/pseudo_tidy.dir/pseudo_tidy.c.s

# Object files for target pseudo_tidy
pseudo_tidy_OBJECTS = \
"CMakeFiles/pseudo_tidy.dir/pseudo_tidy.c.o"

# External object files for target pseudo_tidy
pseudo_tidy_EXTERNAL_OBJECTS =

Tests/RunCMake/pseudo_tidy: Tests/RunCMake/CMakeFiles/pseudo_tidy.dir/pseudo_tidy.c.o
Tests/RunCMake/pseudo_tidy: Tests/RunCMake/CMakeFiles/pseudo_tidy.dir/build.make
Tests/RunCMake/pseudo_tidy: Tests/RunCMake/CMakeFiles/pseudo_tidy.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/workspaces/CMake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable pseudo_tidy"
	cd /workspaces/CMake/Tests/RunCMake && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pseudo_tidy.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Tests/RunCMake/CMakeFiles/pseudo_tidy.dir/build: Tests/RunCMake/pseudo_tidy
.PHONY : Tests/RunCMake/CMakeFiles/pseudo_tidy.dir/build

Tests/RunCMake/CMakeFiles/pseudo_tidy.dir/clean:
	cd /workspaces/CMake/Tests/RunCMake && $(CMAKE_COMMAND) -P CMakeFiles/pseudo_tidy.dir/cmake_clean.cmake
.PHONY : Tests/RunCMake/CMakeFiles/pseudo_tidy.dir/clean

Tests/RunCMake/CMakeFiles/pseudo_tidy.dir/depend:
	cd /workspaces/CMake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/CMake /workspaces/CMake/Tests/RunCMake /workspaces/CMake /workspaces/CMake/Tests/RunCMake /workspaces/CMake/Tests/RunCMake/CMakeFiles/pseudo_tidy.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : Tests/RunCMake/CMakeFiles/pseudo_tidy.dir/depend

