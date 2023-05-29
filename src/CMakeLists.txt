project(googletest-distribution)

add_executable(progetto project_main.cpp ../googletest/samples/sample1.cc ../googletest/samples/sample1_unittest.cc)

target_include_directories(progetto PUBLIC ../googletest/include/gtest ../googletest/samples ../googletest/src)

target_link_libraries(progetto libgtest) 
target_link_libraries(progetto libpthread)
