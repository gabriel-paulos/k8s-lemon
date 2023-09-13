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
include src/storage/CMakeFiles/duckdb_storage.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/storage/CMakeFiles/duckdb_storage.dir/compiler_depend.make

# Include the progress variables for this target.
include src/storage/CMakeFiles/duckdb_storage.dir/progress.make

# Include the compile flags for this target's objects.
include src/storage/CMakeFiles/duckdb_storage.dir/flags.make

src/storage/CMakeFiles/duckdb_storage.dir/ub_duckdb_storage.cpp.o: src/storage/CMakeFiles/duckdb_storage.dir/flags.make
src/storage/CMakeFiles/duckdb_storage.dir/ub_duckdb_storage.cpp.o: src/storage/ub_duckdb_storage.cpp
src/storage/CMakeFiles/duckdb_storage.dir/ub_duckdb_storage.cpp.o: src/storage/CMakeFiles/duckdb_storage.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/storage/CMakeFiles/duckdb_storage.dir/ub_duckdb_storage.cpp.o"
	cd /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/storage && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/storage/CMakeFiles/duckdb_storage.dir/ub_duckdb_storage.cpp.o -MF CMakeFiles/duckdb_storage.dir/ub_duckdb_storage.cpp.o.d -o CMakeFiles/duckdb_storage.dir/ub_duckdb_storage.cpp.o -c /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/storage/ub_duckdb_storage.cpp

src/storage/CMakeFiles/duckdb_storage.dir/ub_duckdb_storage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/duckdb_storage.dir/ub_duckdb_storage.cpp.i"
	cd /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/storage && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/storage/ub_duckdb_storage.cpp > CMakeFiles/duckdb_storage.dir/ub_duckdb_storage.cpp.i

src/storage/CMakeFiles/duckdb_storage.dir/ub_duckdb_storage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/duckdb_storage.dir/ub_duckdb_storage.cpp.s"
	cd /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/storage && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/storage/ub_duckdb_storage.cpp -o CMakeFiles/duckdb_storage.dir/ub_duckdb_storage.cpp.s

duckdb_storage: src/storage/CMakeFiles/duckdb_storage.dir/ub_duckdb_storage.cpp.o
duckdb_storage: src/storage/CMakeFiles/duckdb_storage.dir/build.make
.PHONY : duckdb_storage

# Rule to build all files generated by this target.
src/storage/CMakeFiles/duckdb_storage.dir/build: duckdb_storage
.PHONY : src/storage/CMakeFiles/duckdb_storage.dir/build

src/storage/CMakeFiles/duckdb_storage.dir/clean:
	cd /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/storage && $(CMAKE_COMMAND) -P CMakeFiles/duckdb_storage.dir/cmake_clean.cmake
.PHONY : src/storage/CMakeFiles/duckdb_storage.dir/clean

src/storage/CMakeFiles/duckdb_storage.dir/depend:
	cd /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/src/storage /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/storage /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/storage/CMakeFiles/duckdb_storage.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/storage/CMakeFiles/duckdb_storage.dir/depend

