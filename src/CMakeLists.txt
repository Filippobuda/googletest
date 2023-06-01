cmake_minimum_required(VERSION 3.10)
project(MatrixVector)

# Locate and include Google Test
find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})

# Add an executable for your main.cpp file
add_executable(exec main.cpp sample1.cc sample1_unittest.cc sample2.cc sample2_unittest.cc sample3.cc sample3_unittest.cc sample4.cc sample4_unittest.cc sample5_unittest.cc sample5_unittest.cc sample6_unittest.cc sample7_unittest.cc sample8_unittest.cc)

add_executable(exec2 sample9_unittest.cc)
add_executable(exec3 sample10_unittest.cc)

# Link the executable with Google Test
target_link_libraries(exec GTest::GTest GTest::Main)
