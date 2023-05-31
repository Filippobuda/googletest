#!/bin/bash

#questi path sono da googletest la directory root
pwd
mkdir src/build
pwd
cd  src/build
pwd
#questi invece sono da dentro googletest/src/build provo a farli separati
g++ ../../googletest/src/gtest_main.cc ../../googletest/samples/sample1.cc ../../googletest/samples/sample1_unittest.cc -o output1 -lpthread -lgtest
echo "Sample 1 built"
g++ ../../googletest/src/gtest_main.cc ../../googletest/samples/sample2*.cc -o output2 -lpthread -lgtest
echo "Sample 2 built"
g++ ../../googletest/src/gtest_main.cc ../../googletest/samples/sample3_unittest.cc -o output3 -lpthread -lgtest
echo "Sample 3 built"
g++ ../../googletest/src/gtest_main.cc ../../googletest/samples/sample4*.cc -o output4 -lpthread -lgtest
echo "Sample 4 built"
g++ ../../googletest/src/gtest_main.cc ../googletest/samples/sample1.cc ../../googletest/samples/sample5_unittest.cc -o output5 -lpthread -lgtest
echo "Sample 5 built"
g++ ../../googletest/src/gtest_main.cc ../../googletest/samples/sample6*.cc -o output6 -lpthread -lgtest
echo "Sample 6 built"
g++ ../../googletest/src/gtest_main.cc ../../googletest/samples/sample7*.cc -o output7 -lpthread -lgtest
echo "Sample 7 built"
g++ ../../googletest/src/gtest_main.cc ../../googletest/samples/sample8*.cc -o output8 -lpthread -lgtest
echo "Sample 8 built"
g++ ../../googletest/samples/sample9_unittest.cc -o output2 -lpthread -lgtest
echo "Sample 9 built"
g++ ../../googletest/samples/sample10_unittest.cc -o output3 -lpthread -lgtest
echo "Sample 10 built"