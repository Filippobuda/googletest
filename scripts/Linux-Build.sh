#!/bin/bash

#questi path sono da googletest la directory root
pwd
mkdir src/build
pwd
cd  src/build
pwd
#questi invece sono da dentro googletest/src/build
g++ ../../googletest/src/gtest_main.cc ../../googletest/samples/sample1*.cc -o output1 -lpthread -lgtest
g++ ../../googletest/src/gtest_main.cc ../../googletest/samples/sample2*.cc -p output2 -lpthread -lgtest
g++ ../../googletest/src/gtest_main.cc ../../googletest/samples/sample3*.cc -p output3 -lpthread -lgtest
g++ ../../googletest/src/gtest_main.cc ../../googletest/samples/sample4*.cc -p output4 -lpthread -lgtest
g++ ../../googletest/src/gtest_main.cc ../../googletest/samples/sample5*.cc -p output5 -lpthread -lgtest
g++ ../../googletest/src/gtest_main.cc ../../googletest/samples/sample6*.cc -p output6 -lpthread -lgtest
g++ ../../googletest/src/gtest_main.cc ../../googletest/samples/sample7*.cc -p output7 -lpthread -lgtest
g++ ../../googletest/src/gtest_main.cc ../../googletest/samples/sample8*.cc -p output8 -lpthread -lgtest
g++ ../../googletest/samples/sample9_unittest.cc -o output2 -lpthread -lgtest
g++ ../../googletest/samples/sample10_unittest.cc -o output3 -lpthread -lgtest