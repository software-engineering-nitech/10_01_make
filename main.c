#include <stdio.h>
#include "opencv.h"
#include "pcl.h"
#include "opencv_or_pcl.h"

double mycompute(double, double);

int main(void)
{
    double a, b;
    a = 2;
    b = 3;

    printf("%f and %f => %f\n", a, b, mycompute(a, b));

    pcl();
    opencv();
    opencv_or_pcl();

    return 0;
}
