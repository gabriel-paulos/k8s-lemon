# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

# compile C with /usr/bin/cc
# compile CXX with /usr/bin/c++
C_DEFINES = -DBUILD_JEMALLOC_EXTENSION=ON -DDUCKDB_BUILD_LIBRARY -DSHELL_INLINE_AUTOCOMPLETE -DSQLITE_SHELL_IS_UTF8 -DUSE_DUCKDB_SHELL_WRAPPER -Dsqlite3_api_wrapper_EXPORTS

C_INCLUDES = -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/../../remon -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/../../remon/shared -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/src/include -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/third_party/fsst -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/third_party/fmt/include -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/third_party/hyperloglog -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/third_party/fastpforlib -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/third_party/fast_float -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/third_party/re2 -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/third_party/miniz -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/third_party/utf8proc/include -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/third_party/miniparquet -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/third_party/concurrentqueue -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/third_party/pcg -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/third_party/tdigest -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/third_party/mbedtls/include -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/third_party/jaro_winkler -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/tools/sqlite3_api_wrapper/include -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/tools/sqlite3_api_wrapper/sqlite3_udf_api/include -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/extension -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/extension/jemalloc/include -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/tools/sqlite3_api_wrapper/../../third_party/utf8proc/include -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/tools/sqlite3_api_wrapper/../../extension/autocomplete/include -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/tools/sqlite3_api_wrapper/../../third_party/catch -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/tools/sqlite3_api_wrapper/test/include -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/third_party/libpg_query/include

C_FLAGS = -O3 -DNDEBUG -O3 -DNDEBUG   -fPIC

CXX_DEFINES = -DBUILD_JEMALLOC_EXTENSION=ON -DDUCKDB_BUILD_LIBRARY -DSHELL_INLINE_AUTOCOMPLETE -DSQLITE_SHELL_IS_UTF8 -DUSE_DUCKDB_SHELL_WRAPPER -Dsqlite3_api_wrapper_EXPORTS

CXX_INCLUDES = -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/../../remon -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/../../remon/shared -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/src/include -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/third_party/fsst -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/third_party/fmt/include -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/third_party/hyperloglog -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/third_party/fastpforlib -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/third_party/fast_float -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/third_party/re2 -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/third_party/miniz -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/third_party/utf8proc/include -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/third_party/miniparquet -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/third_party/concurrentqueue -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/third_party/pcg -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/third_party/tdigest -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/third_party/mbedtls/include -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/third_party/jaro_winkler -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/tools/sqlite3_api_wrapper/include -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/tools/sqlite3_api_wrapper/sqlite3_udf_api/include -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/extension -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/extension/jemalloc/include -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/tools/sqlite3_api_wrapper/../../third_party/utf8proc/include -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/tools/sqlite3_api_wrapper/../../extension/autocomplete/include -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/tools/sqlite3_api_wrapper/../../third_party/catch -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/tools/sqlite3_api_wrapper/test/include -I/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/third_party/libpg_query/include

CXX_FLAGS = -O3 -DNDEBUG -O3 -DNDEBUG   -fPIC -std=c++11

