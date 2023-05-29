project(googletest-distribution)

add_executable(progetto project_main.cpp)

target_include_directories(progetto PUBLIC ../googletest/include/gtest ../googletest/samples)

target_link_libraries(progetto libgtest)
target_link_libraries(progetto libpthread)