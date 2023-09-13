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
include src/planner/CMakeFiles/duckdb_planner.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/planner/CMakeFiles/duckdb_planner.dir/compiler_depend.make

# Include the progress variables for this target.
include src/planner/CMakeFiles/duckdb_planner.dir/progress.make

# Include the compile flags for this target's objects.
include src/planner/CMakeFiles/duckdb_planner.dir/flags.make

src/planner/CMakeFiles/duckdb_planner.dir/ub_duckdb_planner.cpp.o: src/planner/CMakeFiles/duckdb_planner.dir/flags.make
src/planner/CMakeFiles/duckdb_planner.dir/ub_duckdb_planner.cpp.o: src/planner/ub_duckdb_planner.cpp
src/planner/CMakeFiles/duckdb_planner.dir/ub_duckdb_planner.cpp.o: src/planner/CMakeFiles/duckdb_planner.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/planner/CMakeFiles/duckdb_planner.dir/ub_duckdb_planner.cpp.o"
	cd /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/planner && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/planner/CMakeFiles/duckdb_planner.dir/ub_duckdb_planner.cpp.o -MF CMakeFiles/duckdb_planner.dir/ub_duckdb_planner.cpp.o.d -o CMakeFiles/duckdb_planner.dir/ub_duckdb_planner.cpp.o -c /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/planner/ub_duckdb_planner.cpp

src/planner/CMakeFiles/duckdb_planner.dir/ub_duckdb_planner.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/duckdb_planner.dir/ub_duckdb_planner.cpp.i"
	cd /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/planner && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/planner/ub_duckdb_planner.cpp > CMakeFiles/duckdb_planner.dir/ub_duckdb_planner.cpp.i

src/planner/CMakeFiles/duckdb_planner.dir/ub_duckdb_planner.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/duckdb_planner.dir/ub_duckdb_planner.cpp.s"
	cd /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/planner && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/planner/ub_duckdb_planner.cpp -o CMakeFiles/duckdb_planner.dir/ub_duckdb_planner.cpp.s

duckdb_planner: src/planner/CMakeFiles/duckdb_planner.dir/ub_duckdb_planner.cpp.o
duckdb_planner: src/planner/CMakeFiles/duckdb_planner.dir/build.make
.PHONY : duckdb_planner

# Rule to build all files generated by this target.
src/planner/CMakeFiles/duckdb_planner.dir/build: duckdb_planner
.PHONY : src/planner/CMakeFiles/duckdb_planner.dir/build

src/planner/CMakeFiles/duckdb_planner.dir/clean:
	cd /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/planner && $(CMAKE_COMMAND) -P CMakeFiles/duckdb_planner.dir/cmake_clean.cmake
.PHONY : src/planner/CMakeFiles/duckdb_planner.dir/clean

src/planner/CMakeFiles/duckdb_planner.dir/depend:
	cd /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/src/planner /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/planner /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/planner/CMakeFiles/duckdb_planner.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/planner/CMakeFiles/duckdb_planner.dir/depend

