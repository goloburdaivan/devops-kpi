#include "solution.h"
#include <cassert>
#include <iostream>

void test_FuncA() {
    Solution s;

    assert(s.FuncA(0.5, 10) > 0.5);
    assert(s.FuncA(0.5, 10) < 0.6);

    assert(s.FuncA(0.0, 10) == 0.0);

    assert(s.FuncA(1.0, 10) > 0.7);

    std::cout << "All tests passed!" << std::endl;
}

int main() {
    test_FuncA();
    return 0;
}
