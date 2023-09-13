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
include src/optimizer/join_order/CMakeFiles/duckdb_optimizer_join_order.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/optimizer/join_order/CMakeFiles/duckdb_optimizer_join_order.dir/compiler_depend.make

# Include the progress variables for this target.
include src/optimizer/join_order/CMakeFiles/duckdb_optimizer_join_order.dir/progress.make

# Include the compile flags for this target's objects.
include src/optimizer/join_order/CMakeFiles/duckdb_optimizer_join_order.dir/flags.make

src/optimizer/join_order/CMakeFiles/duckdb_optimizer_join_order.dir/ub_duckdb_optimizer_join_order.cpp.o: src/optimizer/join_order/CMakeFiles/duckdb_optimizer_join_order.dir/flags.make
src/optimizer/join_order/CMakeFiles/duckdb_optimizer_join_order.dir/ub_duckdb_optimizer_join_order.cpp.o: src/optimizer/join_order/ub_duckdb_optimizer_join_order.cpp
src/optimizer/join_order/CMakeFiles/duckdb_optimizer_join_order.dir/ub_duckdb_optimizer_join_order.cpp.o: src/optimizer/join_order/CMakeFiles/duckdb_optimizer_join_order.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/optimizer/join_order/CMakeFiles/duckdb_optimizer_join_order.dir/ub_duckdb_optimizer_join_order.cpp.o"
	cd /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/optimizer/join_order && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/optimizer/join_order/CMakeFiles/duckdb_optimizer_join_order.dir/ub_duckdb_optimizer_join_order.cpp.o -MF CMakeFiles/duckdb_optimizer_join_order.dir/ub_duckdb_optimizer_join_order.cpp.o.d -o CMakeFiles/duckdb_optimizer_join_order.dir/ub_duckdb_optimizer_join_order.cpp.o -c /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/optimizer/join_order/ub_duckdb_optimizer_join_order.cpp

src/optimizer/join_order/CMakeFiles/duckdb_optimizer_join_order.dir/ub_duckdb_optimizer_join_order.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/duckdb_optimizer_join_order.dir/ub_duckdb_optimizer_join_order.cpp.i"
	cd /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/optimizer/join_order && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/optimizer/join_order/ub_duckdb_optimizer_join_order.cpp > CMakeFiles/duckdb_optimizer_join_order.dir/ub_duckdb_optimizer_join_order.cpp.i

src/optimizer/join_order/CMakeFiles/duckdb_optimizer_join_order.dir/ub_duckdb_optimizer_join_order.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/duckdb_optimizer_join_order.dir/ub_duckdb_optimizer_join_order.cpp.s"
	cd /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/optimizer/join_order && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/optimizer/join_order/ub_duckdb_optimizer_join_order.cpp -o CMakeFiles/duckdb_optimizer_join_order.dir/ub_duckdb_optimizer_join_order.cpp.s

duckdb_optimizer_join_order: src/optimizer/join_order/CMakeFiles/duckdb_optimizer_join_order.dir/ub_duckdb_optimizer_join_order.cpp.o
duckdb_optimizer_join_order: src/optimizer/join_order/CMakeFiles/duckdb_optimizer_join_order.dir/build.make
.PHONY : duckdb_optimizer_join_order

# Rule to build all files generated by this target.
src/optimizer/join_order/CMakeFiles/duckdb_optimizer_join_order.dir/build: duckdb_optimizer_join_order
.PHONY : src/optimizer/join_order/CMakeFiles/duckdb_optimizer_join_order.dir/build

src/optimizer/join_order/CMakeFiles/duckdb_optimizer_join_order.dir/clean:
	cd /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/optimizer/join_order && $(CMAKE_COMMAND) -P CMakeFiles/duckdb_optimizer_join_order.dir/cmake_clean.cmake
.PHONY : src/optimizer/join_order/CMakeFiles/duckdb_optimizer_join_order.dir/clean

src/optimizer/join_order/CMakeFiles/duckdb_optimizer_join_order.dir/depend:
	cd /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/src/optimizer/join_order /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/optimizer/join_order /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/optimizer/join_order/CMakeFiles/duckdb_optimizer_join_order.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/optimizer/join_order/CMakeFiles/duckdb_optimizer_join_order.dir/depend

