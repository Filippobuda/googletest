#include <iostream>
#include <fstream>
#include <vector>
#include <sstream>
#include <numeric>
#include <gtest/gtest.h>
#include "../googletest/samples/sample1.h"

std::string matrixFileName;


class Matrix {
    private:
        int rows;
        int columns;
        std::vector<std::vector<int>> data;

    public:
        Matrix(const std::string& filename) {
            std::string line;
            std::ifstream file(filename);
            
            while (std::getline(file, line)) {
                std::vector<int> row;
                int value;
                std::istringstream iss(line);

                while (iss >> value) {
                    row.push_back(value);
                }

                data.push_back(row);
            }
        }

        void print() const {
            for (const auto& row : data) {
                for (int value : row) {
                    std::cout << value << " ";
                }
                std::cout << std::endl;
            }
        }

        int getRows(){
            return rows;
        }
        int getCols(){
            return columns;
        }
        int get(int i, int j) { return data.at(i).at(j);}
};

TEST(MatrixTest, IsMatrixPrime) {
    Matrix matrix(matrixFileName);
    for (int i = 0; i < matrix.getRows(); i++) {
        for (int j = 0; j < matrix.getCols(); j++) {
            ASSERT_TRUE(IsPrime(matrix.get(i, j)));
        }
    }
}

int main(int argc, char** argv) {
    if (argc > 1) {
        matrixFileName = argv[1];
        testing::InitGoogleTest(&argc, argv);
        return RUN_ALL_TESTS();
    } else {
        std::cerr << "No matrix file provided!" << std::endl;
        return 1;
    }
}
