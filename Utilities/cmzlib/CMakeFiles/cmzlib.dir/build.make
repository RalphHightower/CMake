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
include Utilities/cmzlib/CMakeFiles/cmzlib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Utilities/cmzlib/CMakeFiles/cmzlib.dir/compiler_depend.make

# Include the progress variables for this target.
include Utilities/cmzlib/CMakeFiles/cmzlib.dir/progress.make

# Include the compile flags for this target's objects.
include Utilities/cmzlib/CMakeFiles/cmzlib.dir/flags.make

Utilities/cmzlib/CMakeFiles/cmzlib.dir/codegen:
.PHONY : Utilities/cmzlib/CMakeFiles/cmzlib.dir/codegen

Utilities/cmzlib/CMakeFiles/cmzlib.dir/adler32.c.o: Utilities/cmzlib/CMakeFiles/cmzlib.dir/flags.make
Utilities/cmzlib/CMakeFiles/cmzlib.dir/adler32.c.o: Utilities/cmzlib/adler32.c
Utilities/cmzlib/CMakeFiles/cmzlib.dir/adler32.c.o: Utilities/cmzlib/CMakeFiles/cmzlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/workspaces/CMake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Utilities/cmzlib/CMakeFiles/cmzlib.dir/adler32.c.o"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT Utilities/cmzlib/CMakeFiles/cmzlib.dir/adler32.c.o -MF CMakeFiles/cmzlib.dir/adler32.c.o.d -o CMakeFiles/cmzlib.dir/adler32.c.o -c /workspaces/CMake/Utilities/cmzlib/adler32.c

Utilities/cmzlib/CMakeFiles/cmzlib.dir/adler32.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/cmzlib.dir/adler32.c.i"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/CMake/Utilities/cmzlib/adler32.c > CMakeFiles/cmzlib.dir/adler32.c.i

Utilities/cmzlib/CMakeFiles/cmzlib.dir/adler32.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/cmzlib.dir/adler32.c.s"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/CMake/Utilities/cmzlib/adler32.c -o CMakeFiles/cmzlib.dir/adler32.c.s

Utilities/cmzlib/CMakeFiles/cmzlib.dir/compress.c.o: Utilities/cmzlib/CMakeFiles/cmzlib.dir/flags.make
Utilities/cmzlib/CMakeFiles/cmzlib.dir/compress.c.o: Utilities/cmzlib/compress.c
Utilities/cmzlib/CMakeFiles/cmzlib.dir/compress.c.o: Utilities/cmzlib/CMakeFiles/cmzlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/workspaces/CMake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object Utilities/cmzlib/CMakeFiles/cmzlib.dir/compress.c.o"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT Utilities/cmzlib/CMakeFiles/cmzlib.dir/compress.c.o -MF CMakeFiles/cmzlib.dir/compress.c.o.d -o CMakeFiles/cmzlib.dir/compress.c.o -c /workspaces/CMake/Utilities/cmzlib/compress.c

Utilities/cmzlib/CMakeFiles/cmzlib.dir/compress.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/cmzlib.dir/compress.c.i"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/CMake/Utilities/cmzlib/compress.c > CMakeFiles/cmzlib.dir/compress.c.i

Utilities/cmzlib/CMakeFiles/cmzlib.dir/compress.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/cmzlib.dir/compress.c.s"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/CMake/Utilities/cmzlib/compress.c -o CMakeFiles/cmzlib.dir/compress.c.s

Utilities/cmzlib/CMakeFiles/cmzlib.dir/crc32.c.o: Utilities/cmzlib/CMakeFiles/cmzlib.dir/flags.make
Utilities/cmzlib/CMakeFiles/cmzlib.dir/crc32.c.o: Utilities/cmzlib/crc32.c
Utilities/cmzlib/CMakeFiles/cmzlib.dir/crc32.c.o: Utilities/cmzlib/CMakeFiles/cmzlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/workspaces/CMake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object Utilities/cmzlib/CMakeFiles/cmzlib.dir/crc32.c.o"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT Utilities/cmzlib/CMakeFiles/cmzlib.dir/crc32.c.o -MF CMakeFiles/cmzlib.dir/crc32.c.o.d -o CMakeFiles/cmzlib.dir/crc32.c.o -c /workspaces/CMake/Utilities/cmzlib/crc32.c

Utilities/cmzlib/CMakeFiles/cmzlib.dir/crc32.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/cmzlib.dir/crc32.c.i"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/CMake/Utilities/cmzlib/crc32.c > CMakeFiles/cmzlib.dir/crc32.c.i

Utilities/cmzlib/CMakeFiles/cmzlib.dir/crc32.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/cmzlib.dir/crc32.c.s"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/CMake/Utilities/cmzlib/crc32.c -o CMakeFiles/cmzlib.dir/crc32.c.s

Utilities/cmzlib/CMakeFiles/cmzlib.dir/deflate.c.o: Utilities/cmzlib/CMakeFiles/cmzlib.dir/flags.make
Utilities/cmzlib/CMakeFiles/cmzlib.dir/deflate.c.o: Utilities/cmzlib/deflate.c
Utilities/cmzlib/CMakeFiles/cmzlib.dir/deflate.c.o: Utilities/cmzlib/CMakeFiles/cmzlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/workspaces/CMake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object Utilities/cmzlib/CMakeFiles/cmzlib.dir/deflate.c.o"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT Utilities/cmzlib/CMakeFiles/cmzlib.dir/deflate.c.o -MF CMakeFiles/cmzlib.dir/deflate.c.o.d -o CMakeFiles/cmzlib.dir/deflate.c.o -c /workspaces/CMake/Utilities/cmzlib/deflate.c

Utilities/cmzlib/CMakeFiles/cmzlib.dir/deflate.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/cmzlib.dir/deflate.c.i"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/CMake/Utilities/cmzlib/deflate.c > CMakeFiles/cmzlib.dir/deflate.c.i

Utilities/cmzlib/CMakeFiles/cmzlib.dir/deflate.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/cmzlib.dir/deflate.c.s"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/CMake/Utilities/cmzlib/deflate.c -o CMakeFiles/cmzlib.dir/deflate.c.s

Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzclose.c.o: Utilities/cmzlib/CMakeFiles/cmzlib.dir/flags.make
Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzclose.c.o: Utilities/cmzlib/gzclose.c
Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzclose.c.o: Utilities/cmzlib/CMakeFiles/cmzlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/workspaces/CMake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzclose.c.o"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzclose.c.o -MF CMakeFiles/cmzlib.dir/gzclose.c.o.d -o CMakeFiles/cmzlib.dir/gzclose.c.o -c /workspaces/CMake/Utilities/cmzlib/gzclose.c

Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzclose.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/cmzlib.dir/gzclose.c.i"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/CMake/Utilities/cmzlib/gzclose.c > CMakeFiles/cmzlib.dir/gzclose.c.i

Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzclose.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/cmzlib.dir/gzclose.c.s"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/CMake/Utilities/cmzlib/gzclose.c -o CMakeFiles/cmzlib.dir/gzclose.c.s

Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzlib.c.o: Utilities/cmzlib/CMakeFiles/cmzlib.dir/flags.make
Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzlib.c.o: Utilities/cmzlib/gzlib.c
Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzlib.c.o: Utilities/cmzlib/CMakeFiles/cmzlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/workspaces/CMake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzlib.c.o"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzlib.c.o -MF CMakeFiles/cmzlib.dir/gzlib.c.o.d -o CMakeFiles/cmzlib.dir/gzlib.c.o -c /workspaces/CMake/Utilities/cmzlib/gzlib.c

Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzlib.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/cmzlib.dir/gzlib.c.i"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/CMake/Utilities/cmzlib/gzlib.c > CMakeFiles/cmzlib.dir/gzlib.c.i

Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzlib.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/cmzlib.dir/gzlib.c.s"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/CMake/Utilities/cmzlib/gzlib.c -o CMakeFiles/cmzlib.dir/gzlib.c.s

Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzread.c.o: Utilities/cmzlib/CMakeFiles/cmzlib.dir/flags.make
Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzread.c.o: Utilities/cmzlib/gzread.c
Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzread.c.o: Utilities/cmzlib/CMakeFiles/cmzlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/workspaces/CMake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzread.c.o"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzread.c.o -MF CMakeFiles/cmzlib.dir/gzread.c.o.d -o CMakeFiles/cmzlib.dir/gzread.c.o -c /workspaces/CMake/Utilities/cmzlib/gzread.c

Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/cmzlib.dir/gzread.c.i"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/CMake/Utilities/cmzlib/gzread.c > CMakeFiles/cmzlib.dir/gzread.c.i

Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/cmzlib.dir/gzread.c.s"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/CMake/Utilities/cmzlib/gzread.c -o CMakeFiles/cmzlib.dir/gzread.c.s

Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzwrite.c.o: Utilities/cmzlib/CMakeFiles/cmzlib.dir/flags.make
Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzwrite.c.o: Utilities/cmzlib/gzwrite.c
Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzwrite.c.o: Utilities/cmzlib/CMakeFiles/cmzlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/workspaces/CMake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzwrite.c.o"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzwrite.c.o -MF CMakeFiles/cmzlib.dir/gzwrite.c.o.d -o CMakeFiles/cmzlib.dir/gzwrite.c.o -c /workspaces/CMake/Utilities/cmzlib/gzwrite.c

Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzwrite.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/cmzlib.dir/gzwrite.c.i"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/CMake/Utilities/cmzlib/gzwrite.c > CMakeFiles/cmzlib.dir/gzwrite.c.i

Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzwrite.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/cmzlib.dir/gzwrite.c.s"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/CMake/Utilities/cmzlib/gzwrite.c -o CMakeFiles/cmzlib.dir/gzwrite.c.s

Utilities/cmzlib/CMakeFiles/cmzlib.dir/inffast.c.o: Utilities/cmzlib/CMakeFiles/cmzlib.dir/flags.make
Utilities/cmzlib/CMakeFiles/cmzlib.dir/inffast.c.o: Utilities/cmzlib/inffast.c
Utilities/cmzlib/CMakeFiles/cmzlib.dir/inffast.c.o: Utilities/cmzlib/CMakeFiles/cmzlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/workspaces/CMake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object Utilities/cmzlib/CMakeFiles/cmzlib.dir/inffast.c.o"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT Utilities/cmzlib/CMakeFiles/cmzlib.dir/inffast.c.o -MF CMakeFiles/cmzlib.dir/inffast.c.o.d -o CMakeFiles/cmzlib.dir/inffast.c.o -c /workspaces/CMake/Utilities/cmzlib/inffast.c

Utilities/cmzlib/CMakeFiles/cmzlib.dir/inffast.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/cmzlib.dir/inffast.c.i"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/CMake/Utilities/cmzlib/inffast.c > CMakeFiles/cmzlib.dir/inffast.c.i

Utilities/cmzlib/CMakeFiles/cmzlib.dir/inffast.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/cmzlib.dir/inffast.c.s"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/CMake/Utilities/cmzlib/inffast.c -o CMakeFiles/cmzlib.dir/inffast.c.s

Utilities/cmzlib/CMakeFiles/cmzlib.dir/inflate.c.o: Utilities/cmzlib/CMakeFiles/cmzlib.dir/flags.make
Utilities/cmzlib/CMakeFiles/cmzlib.dir/inflate.c.o: Utilities/cmzlib/inflate.c
Utilities/cmzlib/CMakeFiles/cmzlib.dir/inflate.c.o: Utilities/cmzlib/CMakeFiles/cmzlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/workspaces/CMake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object Utilities/cmzlib/CMakeFiles/cmzlib.dir/inflate.c.o"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT Utilities/cmzlib/CMakeFiles/cmzlib.dir/inflate.c.o -MF CMakeFiles/cmzlib.dir/inflate.c.o.d -o CMakeFiles/cmzlib.dir/inflate.c.o -c /workspaces/CMake/Utilities/cmzlib/inflate.c

Utilities/cmzlib/CMakeFiles/cmzlib.dir/inflate.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/cmzlib.dir/inflate.c.i"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/CMake/Utilities/cmzlib/inflate.c > CMakeFiles/cmzlib.dir/inflate.c.i

Utilities/cmzlib/CMakeFiles/cmzlib.dir/inflate.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/cmzlib.dir/inflate.c.s"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/CMake/Utilities/cmzlib/inflate.c -o CMakeFiles/cmzlib.dir/inflate.c.s

Utilities/cmzlib/CMakeFiles/cmzlib.dir/inftrees.c.o: Utilities/cmzlib/CMakeFiles/cmzlib.dir/flags.make
Utilities/cmzlib/CMakeFiles/cmzlib.dir/inftrees.c.o: Utilities/cmzlib/inftrees.c
Utilities/cmzlib/CMakeFiles/cmzlib.dir/inftrees.c.o: Utilities/cmzlib/CMakeFiles/cmzlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/workspaces/CMake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object Utilities/cmzlib/CMakeFiles/cmzlib.dir/inftrees.c.o"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT Utilities/cmzlib/CMakeFiles/cmzlib.dir/inftrees.c.o -MF CMakeFiles/cmzlib.dir/inftrees.c.o.d -o CMakeFiles/cmzlib.dir/inftrees.c.o -c /workspaces/CMake/Utilities/cmzlib/inftrees.c

Utilities/cmzlib/CMakeFiles/cmzlib.dir/inftrees.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/cmzlib.dir/inftrees.c.i"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/CMake/Utilities/cmzlib/inftrees.c > CMakeFiles/cmzlib.dir/inftrees.c.i

Utilities/cmzlib/CMakeFiles/cmzlib.dir/inftrees.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/cmzlib.dir/inftrees.c.s"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/CMake/Utilities/cmzlib/inftrees.c -o CMakeFiles/cmzlib.dir/inftrees.c.s

Utilities/cmzlib/CMakeFiles/cmzlib.dir/trees.c.o: Utilities/cmzlib/CMakeFiles/cmzlib.dir/flags.make
Utilities/cmzlib/CMakeFiles/cmzlib.dir/trees.c.o: Utilities/cmzlib/trees.c
Utilities/cmzlib/CMakeFiles/cmzlib.dir/trees.c.o: Utilities/cmzlib/CMakeFiles/cmzlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/workspaces/CMake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object Utilities/cmzlib/CMakeFiles/cmzlib.dir/trees.c.o"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT Utilities/cmzlib/CMakeFiles/cmzlib.dir/trees.c.o -MF CMakeFiles/cmzlib.dir/trees.c.o.d -o CMakeFiles/cmzlib.dir/trees.c.o -c /workspaces/CMake/Utilities/cmzlib/trees.c

Utilities/cmzlib/CMakeFiles/cmzlib.dir/trees.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/cmzlib.dir/trees.c.i"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/CMake/Utilities/cmzlib/trees.c > CMakeFiles/cmzlib.dir/trees.c.i

Utilities/cmzlib/CMakeFiles/cmzlib.dir/trees.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/cmzlib.dir/trees.c.s"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/CMake/Utilities/cmzlib/trees.c -o CMakeFiles/cmzlib.dir/trees.c.s

Utilities/cmzlib/CMakeFiles/cmzlib.dir/uncompr.c.o: Utilities/cmzlib/CMakeFiles/cmzlib.dir/flags.make
Utilities/cmzlib/CMakeFiles/cmzlib.dir/uncompr.c.o: Utilities/cmzlib/uncompr.c
Utilities/cmzlib/CMakeFiles/cmzlib.dir/uncompr.c.o: Utilities/cmzlib/CMakeFiles/cmzlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/workspaces/CMake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object Utilities/cmzlib/CMakeFiles/cmzlib.dir/uncompr.c.o"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT Utilities/cmzlib/CMakeFiles/cmzlib.dir/uncompr.c.o -MF CMakeFiles/cmzlib.dir/uncompr.c.o.d -o CMakeFiles/cmzlib.dir/uncompr.c.o -c /workspaces/CMake/Utilities/cmzlib/uncompr.c

Utilities/cmzlib/CMakeFiles/cmzlib.dir/uncompr.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/cmzlib.dir/uncompr.c.i"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/CMake/Utilities/cmzlib/uncompr.c > CMakeFiles/cmzlib.dir/uncompr.c.i

Utilities/cmzlib/CMakeFiles/cmzlib.dir/uncompr.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/cmzlib.dir/uncompr.c.s"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/CMake/Utilities/cmzlib/uncompr.c -o CMakeFiles/cmzlib.dir/uncompr.c.s

Utilities/cmzlib/CMakeFiles/cmzlib.dir/zutil.c.o: Utilities/cmzlib/CMakeFiles/cmzlib.dir/flags.make
Utilities/cmzlib/CMakeFiles/cmzlib.dir/zutil.c.o: Utilities/cmzlib/zutil.c
Utilities/cmzlib/CMakeFiles/cmzlib.dir/zutil.c.o: Utilities/cmzlib/CMakeFiles/cmzlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/workspaces/CMake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object Utilities/cmzlib/CMakeFiles/cmzlib.dir/zutil.c.o"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT Utilities/cmzlib/CMakeFiles/cmzlib.dir/zutil.c.o -MF CMakeFiles/cmzlib.dir/zutil.c.o.d -o CMakeFiles/cmzlib.dir/zutil.c.o -c /workspaces/CMake/Utilities/cmzlib/zutil.c

Utilities/cmzlib/CMakeFiles/cmzlib.dir/zutil.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/cmzlib.dir/zutil.c.i"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/CMake/Utilities/cmzlib/zutil.c > CMakeFiles/cmzlib.dir/zutil.c.i

Utilities/cmzlib/CMakeFiles/cmzlib.dir/zutil.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/cmzlib.dir/zutil.c.s"
	cd /workspaces/CMake/Utilities/cmzlib && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/CMake/Utilities/cmzlib/zutil.c -o CMakeFiles/cmzlib.dir/zutil.c.s

# Object files for target cmzlib
cmzlib_OBJECTS = \
"CMakeFiles/cmzlib.dir/adler32.c.o" \
"CMakeFiles/cmzlib.dir/compress.c.o" \
"CMakeFiles/cmzlib.dir/crc32.c.o" \
"CMakeFiles/cmzlib.dir/deflate.c.o" \
"CMakeFiles/cmzlib.dir/gzclose.c.o" \
"CMakeFiles/cmzlib.dir/gzlib.c.o" \
"CMakeFiles/cmzlib.dir/gzread.c.o" \
"CMakeFiles/cmzlib.dir/gzwrite.c.o" \
"CMakeFiles/cmzlib.dir/inffast.c.o" \
"CMakeFiles/cmzlib.dir/inflate.c.o" \
"CMakeFiles/cmzlib.dir/inftrees.c.o" \
"CMakeFiles/cmzlib.dir/trees.c.o" \
"CMakeFiles/cmzlib.dir/uncompr.c.o" \
"CMakeFiles/cmzlib.dir/zutil.c.o"

# External object files for target cmzlib
cmzlib_EXTERNAL_OBJECTS =

Utilities/cmzlib/libcmzlib.a: Utilities/cmzlib/CMakeFiles/cmzlib.dir/adler32.c.o
Utilities/cmzlib/libcmzlib.a: Utilities/cmzlib/CMakeFiles/cmzlib.dir/compress.c.o
Utilities/cmzlib/libcmzlib.a: Utilities/cmzlib/CMakeFiles/cmzlib.dir/crc32.c.o
Utilities/cmzlib/libcmzlib.a: Utilities/cmzlib/CMakeFiles/cmzlib.dir/deflate.c.o
Utilities/cmzlib/libcmzlib.a: Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzclose.c.o
Utilities/cmzlib/libcmzlib.a: Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzlib.c.o
Utilities/cmzlib/libcmzlib.a: Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzread.c.o
Utilities/cmzlib/libcmzlib.a: Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzwrite.c.o
Utilities/cmzlib/libcmzlib.a: Utilities/cmzlib/CMakeFiles/cmzlib.dir/inffast.c.o
Utilities/cmzlib/libcmzlib.a: Utilities/cmzlib/CMakeFiles/cmzlib.dir/inflate.c.o
Utilities/cmzlib/libcmzlib.a: Utilities/cmzlib/CMakeFiles/cmzlib.dir/inftrees.c.o
Utilities/cmzlib/libcmzlib.a: Utilities/cmzlib/CMakeFiles/cmzlib.dir/trees.c.o
Utilities/cmzlib/libcmzlib.a: Utilities/cmzlib/CMakeFiles/cmzlib.dir/uncompr.c.o
Utilities/cmzlib/libcmzlib.a: Utilities/cmzlib/CMakeFiles/cmzlib.dir/zutil.c.o
Utilities/cmzlib/libcmzlib.a: Utilities/cmzlib/CMakeFiles/cmzlib.dir/build.make
Utilities/cmzlib/libcmzlib.a: Utilities/cmzlib/CMakeFiles/cmzlib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/workspaces/CMake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Linking C static library libcmzlib.a"
	cd /workspaces/CMake/Utilities/cmzlib && $(CMAKE_COMMAND) -P CMakeFiles/cmzlib.dir/cmake_clean_target.cmake
	cd /workspaces/CMake/Utilities/cmzlib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cmzlib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Utilities/cmzlib/CMakeFiles/cmzlib.dir/build: Utilities/cmzlib/libcmzlib.a
.PHONY : Utilities/cmzlib/CMakeFiles/cmzlib.dir/build

Utilities/cmzlib/CMakeFiles/cmzlib.dir/clean:
	cd /workspaces/CMake/Utilities/cmzlib && $(CMAKE_COMMAND) -P CMakeFiles/cmzlib.dir/cmake_clean.cmake
.PHONY : Utilities/cmzlib/CMakeFiles/cmzlib.dir/clean

Utilities/cmzlib/CMakeFiles/cmzlib.dir/depend:
	cd /workspaces/CMake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/CMake /workspaces/CMake/Utilities/cmzlib /workspaces/CMake /workspaces/CMake/Utilities/cmzlib /workspaces/CMake/Utilities/cmzlib/CMakeFiles/cmzlib.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : Utilities/cmzlib/CMakeFiles/cmzlib.dir/depend

