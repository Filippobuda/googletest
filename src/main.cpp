#include <iostream>
#include <fstream>
#include <vector>
#include <sstream>
#include <numeric>

#include <gtest/gtest.h>


// Function to read matrix from file
std::vector<std::vector<float>> readMatrixFromFile(const std::string& filename) {
    std::ifstream file(filename);
    std::vector<std::vector<float>> matrix;
    std::string line;

    while (std::getline(file, line)) {
        std::vector<float> row;
        float value;
        std::istringstream iss(line);

        while (iss >> value) {
            row.push_back(value);
        }

        matrix.push_back(row);
    }

    return matrix;
}

// Function to read vector from file
std::vector<float> readVectorFromFile(const std::string& filename) {
    std::ifstream file(filename);
    std::vector<float> vector;
    std::string line;

    while (std::getline(file, line)) {
        float value = std::stof(line);
        vector.push_back(value);
    }

    return vector;
}

// Function to perform matrix-vector multiplication
std::vector<float> matrixVectorMultiplication(const std::vector<std::vector<float>>& matrix, const std::vector<float>& vector) {
    std::vector<float> result(matrix.size(), 0.0);

    for (size_t i = 0; i < matrix.size(); i++) {
        result[i] = std::inner_product(matrix[i].begin(), matrix[i].end(), vector.begin(), 0.0);
        // for (size_t j = 0; j < matrix[i].size(); j++) {
        //     result[i] += matrix[i][j] * vector[j];
        // }
    }

    return result;
}


// Test fixture for matrix-vector multiplication
class MatrixVectorMultiplicationTest : public ::testing::Test {
protected:
    void SetUp() override {
        // Set up test data
        matrix = { { 1.0, 2.0, 3.0 },
                   { 4.0, 5.0, 6.0 },
                   { 7.0, 8.0, 9.0 } };
        vector = { 1.0, 2.0, 3.0 };
        expected_result = { 14.0, 32.0, 50.0 };
    }

    // Declare variables for test data and expected result
    std::vector<std::vector<float>> matrix;
    std::vector<float> vector;
    std::vector<float> expected_result;
};

// Test case to check matrix-vector multiplication
TEST_F(MatrixVectorMultiplicationTest, MultiplicationTest) {
    // Call the matrix-vector multiplication function
    std::vector<float> result = matrixVectorMultiplication(matrix, vector);

    // Check if the result matches the expected result
    ASSERT_EQ(result, expected_result);
}

// Entry point for running the tests
int main(int argc, char** argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}


/*
int main(int argc, char *argv[]) {
    std::string matrixFile = "matrix.txt";    // Update with your matrix file path
    std::string vectorFile = "vector.txt";    // Update with your vector file path
    std::string outputFile = "result.txt";    // Update with the desired output file path

    std::vector<std::vector<float>> matrix = readMatrixFromFile(matrixFile);
    std::vector<float> vector = readVectorFromFile(vectorFile);

    std::vector<float> result = matrixVectorMultiplication(matrix, vector);

    // Write the result to the output file
    std::ofstream outFile(outputFile);
    if (outFile.is_open()) {
        for (const auto& value : result) {
            outFile << value << "\n";
        }
        outFile.close();
        std::cout << "Result written to " << outputFile << std::endl;
    }
    else {
        std::cerr << "Unable to open output file!" << std::endl;
        return 1;
    }

    return 0;
}*/