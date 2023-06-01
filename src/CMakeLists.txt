cmake_minimum_required(VERSION 3.10)
project(MatrixVector)

# Locate and include Google Test
find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})

# Add an executable for your main.cpp file
add_executable(exec main.cpp)
add_executable(exec sample1.cc sample1_unittest.cc)
add_executable(exec sample2.cc sample2_unittest.cc)
add_executable(exec sample3.cc sample3_unittest.cc)
add_executable(exec sample4.cc sample4_unittest.cc)
add_executable(exec sample5_unittest.cc)
add_executable(exec sample6_unittest.cc)
add_executable(exec sample7_unittest.cc)
add_executable(exec sample8_unittest.cc)

add_executable(exec2 sample9_unittest.cc)
add_executable(exec3 sample10_unittest.cc)

# Link the executable with Google Test
target_link_libraries(exec GTest::GTest GTest::Main)
