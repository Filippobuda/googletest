cmake_minimum_required(VERSION 3.10)
project(MatrixVector)

# Locate and include Google Test
find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})

# Add an executable for your main.cpp file
add_executable(exec main.cpp)

# Link the executable with Google Test
target_link_libraries(exec GTest::GTest GTest::Main)
