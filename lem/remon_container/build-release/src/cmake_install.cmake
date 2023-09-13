# Install script for directory: /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/duckdb")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/include" TYPE DIRECTORY FILES "/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/src/include/duckdb" FILES_MATCHING REGEX "/[^/]*\\.hpp$")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/duckdb.hpp;/usr/local/include/duckdb.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/include" TYPE FILE FILES
    "/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/src/include/duckdb.hpp"
    "/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/src/include/duckdb.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/lib/libduckdb.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/libduckdb.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/lib/libduckdb.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/libduckdb.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/lib" TYPE SHARED_LIBRARY FILES "/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/libduckdb.so")
  if(EXISTS "$ENV{DESTDIR}/usr/local/lib/libduckdb.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/libduckdb.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/usr/local/lib/libduckdb.so"
         OLD_RPATH "/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/../../remon/build-release:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/lib/libduckdb.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/libduckdb_static.a")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/lib" TYPE STATIC_LIBRARY FILES "/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/libduckdb_static.a")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/optimizer/cmake_install.cmake")
  include("/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/planner/cmake_install.cmake")
  include("/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/parser/cmake_install.cmake")
  include("/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/core_functions/cmake_install.cmake")
  include("/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/function/cmake_install.cmake")
  include("/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/catalog/cmake_install.cmake")
  include("/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/common/cmake_install.cmake")
  include("/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/execution/cmake_install.cmake")
  include("/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/main/cmake_install.cmake")
  include("/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/parallel/cmake_install.cmake")
  include("/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/storage/cmake_install.cmake")
  include("/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/transaction/cmake_install.cmake")
  include("/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/src/verification/cmake_install.cmake")

endif()

