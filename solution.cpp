#include "solution.h"

double Solution::FuncA(double x) {
    double sum = 0.0;

    for (int i = 0; i < 3; ++i) {
        double numerator = pow(-1, i) * tgamma(2 * i + 1);
        double denominator = pow(4, i) * pow(tgamma(i + 1), 2);
        double term = (numerator / denominator) * pow(x, i);

        sum += term;
    }

    return sum;
}