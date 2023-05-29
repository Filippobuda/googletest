#include <iostream>
#include <cstdio>

#include "../googletest/include/gtest/gtest.h"
int main()
{
	std::cout << "Hello Jenkins can de na...!" << std::endl;
	testing::InitGoogleTest(&argc, argv);
  	return RUN_ALL_TESTS();
}