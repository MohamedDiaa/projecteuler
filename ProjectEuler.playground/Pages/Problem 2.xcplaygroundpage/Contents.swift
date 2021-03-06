//: [Previous](@previous)

import Foundation

//https://projecteuler.net/problem=2


/*
Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
*/

/*
 //Brute Force Solution
var A = 1
var B = 1
var index = 0
var sum = 0
while A < 4000000 && B < 4000000{
    index += 1
    if (index%2)==0{
        A = A + B
      
        if (A%2)==0{
            sum += A
        }
        print(A)
    }else{
       B = A + B
        if (B%2)==0{
            sum += B
        }
        print(B)
   }
}
print("sum \(sum)")
*/

/*
 Solution 2
 This may be a small improvement.
 The Fibonacci series is: 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610... 
 Now, replacing an odd number with O and an even with E, 
  we get: O, O, E, O, O, E, O, O, E, O, O, E, O, O, E...
 
 And so each third number is even. We don't need to calculate the odd numbers.
 Starting from an two odd terms x, y, the series is: x, y, x + y, x + 2y, 2x + 3y, 3x + 5y And in Python, my solution is:
 */

/*
 def calcE():
	x = y = 1
	sum = 0
	while (sum < 1000000):
 sum += (x + y)
 x, y = x + 2 * y, 2 * x + 3 * y
	return sum
 */
var x = 1 ,y = 1
var sum = 0
while x < 4000000  && y < 4000000{
    sum += (x + y)
    let x1 = x + 2*y
    let y1 = 2*x + 3*y
    
    x = x1
    y = y1
}
print("Sum \(sum)")



