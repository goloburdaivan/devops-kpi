#include "solution.h"
#include <cmath>

/** Implementation of function to calculate infite sum */
/** 
* double x - value of the x
* int n - value for n in the equation
*/
double Solution::FuncA(double x, int n) {
    double sum = 0.0;

    for (int i = 0; i < n; ++i) {
        double numerator = pow(-1, i) * tgamma(2 * i + 1);
        double denominator = pow(4, i) * pow(tgamma(i + 1), 2);
        double term = (numerator / denominator) * pow(x, i);

        sum += term;
    }
    
    return sum;
}