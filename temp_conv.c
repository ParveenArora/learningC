#include <stdio.h>
/* print Fahrenheit-Celsius table
for fahr = 0, 20, ..., 300 */
main()
{
float fahr, celsius;
float lower, upper, step;
lower = 0;
upper = 300;
step = 20;
/* lower limit of temperature scale */
/* upper limit */
/* step size */
fahr = lower;
while (fahr <= upper) {
celsius = 5.0 * (fahr-32.0) / 9.0;
printf("%0.3f %6.1f\n", fahr, celsius);
fahr = fahr + step;
}
}
