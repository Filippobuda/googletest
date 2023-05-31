#!/bin/bash

#questi path sono da googletest la directory root
pwd
mkdir src/build
pwd
cd  src/build
pwd
#questi invece sono da dentro googletest/src/build provo a farli separati
g++ ../../googletest/src/gtest_main.cc ../../googletest/samples/sample1*.cc -o output1 -lpthread -lgtest
g++ ../../googletest/src/gtest_main.cc ../../googletest/samples/sample2*.cc -o output2 -lpthread -lgtest
g++ ../../googletest/src/gtest_main.cc ../../googletest/samples/sample3*.cc -o output3 -lpthread -lgtest
g++ ../../googletest/src/gtest_main.cc ../../googletest/samples/sample4*.cc -o output4 -lpthread -lgtest
g++ ../../googletest/src/gtest_main.cc ../../googletest/samples/sample5*.cc -o output5 -lpthread -lgtest
g++ ../../googletest/src/gtest_main.cc ../../googletest/samples/sample6*.cc -o output6 -lpthread -lgtest
g++ ../../googletest/src/gtest_main.cc ../../googletest/samples/sample7*.cc -o output7 -lpthread -lgtest
g++ ../../googletest/src/gtest_main.cc ../../googletest/samples/sample8*.cc -o output8 -lpthread -lgtest
g++ ../../googletest/samples/sample9_unittest.cc -o output2 -lpthread -lgtest
g++ ../../googletest/samples/sample10_unittest.cc -o output3 -lpthread -lgtest