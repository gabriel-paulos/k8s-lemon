# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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
CMAKE_COMMAND = /opt/cmake-3.24.1/bin/cmake

# The command to remove a file.
RM = /opt/cmake-3.24.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release

# Include any dependencies generated for this target.
include src/function/scalar/sequence/CMakeFiles/duckdb_func_seq.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/function/scalar/sequence/CMakeFiles/duckdb_func_seq.dir/compiler_depend.make

# Include the progress variables for this target.
include src/function/scalar/sequence/CMakeFiles/duckdb_func_seq.dir/progress.make

# Include the compile flags for this target's objects.
include src/function/scalar/sequence/CMakeFiles/duckdb_func_seq.dir/flags.make

src/function/scalar/sequence/CMakeFiles/duckdb_func_seq.dir/ub_duckdb_func_seq.cpp.o: src/function/scalar/sequence/CMakeFiles/duckdb_func_seq.dir/flags.make
src/function/scalar/sequence/CMakeFiles/duckdb_func_seq.dir/ub_duckdb_func_seq.cpp.o: src/function/scalar/sequence/ub_duckdb_func_seq.cpp
src/function/scalar/sequence/CMakeFiles/duckdb_func_seq.dir/ub_duckdb_func_seq.cpp.o: src/function/scalar/sequence/CMakeFiles/duckdb_func_seq.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/function/scalar/sequence/CMakeFiles/duckdb_func_seq.dir/ub_duckdb_func_seq.cpp.o"
	cd /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/function/scalar/sequence && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/function/scalar/sequence/CMakeFiles/duckdb_func_seq.dir/ub_duckdb_func_seq.cpp.o -MF CMakeFiles/duckdb_func_seq.dir/ub_duckdb_func_seq.cpp.o.d -o CMakeFiles/duckdb_func_seq.dir/ub_duckdb_func_seq.cpp.o -c /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/function/scalar/sequence/ub_duckdb_func_seq.cpp

src/function/scalar/sequence/CMakeFiles/duckdb_func_seq.dir/ub_duckdb_func_seq.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/duckdb_func_seq.dir/ub_duckdb_func_seq.cpp.i"
	cd /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/function/scalar/sequence && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/function/scalar/sequence/ub_duckdb_func_seq.cpp > CMakeFiles/duckdb_func_seq.dir/ub_duckdb_func_seq.cpp.i

src/function/scalar/sequence/CMakeFiles/duckdb_func_seq.dir/ub_duckdb_func_seq.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/duckdb_func_seq.dir/ub_duckdb_func_seq.cpp.s"
	cd /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/function/scalar/sequence && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/function/scalar/sequence/ub_duckdb_func_seq.cpp -o CMakeFiles/duckdb_func_seq.dir/ub_duckdb_func_seq.cpp.s

duckdb_func_seq: src/function/scalar/sequence/CMakeFiles/duckdb_func_seq.dir/ub_duckdb_func_seq.cpp.o
duckdb_func_seq: src/function/scalar/sequence/CMakeFiles/duckdb_func_seq.dir/build.make
.PHONY : duckdb_func_seq

# Rule to build all files generated by this target.
src/function/scalar/sequence/CMakeFiles/duckdb_func_seq.dir/build: duckdb_func_seq
.PHONY : src/function/scalar/sequence/CMakeFiles/duckdb_func_seq.dir/build

src/function/scalar/sequence/CMakeFiles/duckdb_func_seq.dir/clean:
	cd /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/function/scalar/sequence && $(CMAKE_COMMAND) -P CMakeFiles/duckdb_func_seq.dir/cmake_clean.cmake
.PHONY : src/function/scalar/sequence/CMakeFiles/duckdb_func_seq.dir/clean

src/function/scalar/sequence/CMakeFiles/duckdb_func_seq.dir/depend:
	cd /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/src/function/scalar/sequence /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/function/scalar/sequence /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/function/scalar/sequence/CMakeFiles/duckdb_func_seq.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/function/scalar/sequence/CMakeFiles/duckdb_func_seq.dir/depend

