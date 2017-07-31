//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

let date = Date()
var D = 1...1000

print(D)

var X = 0
var solution = 0

for d in D{
    
    if sqrt(Double(d)) == ceil(sqrt(Double(d))){
        continue
    }
    
    let Y = 1...D.upperBound
    loop: for y in Y{
        
       let x = sqrt( 1 + Double(d * (y*y)))
        //print(x)
        if (x == ceil(x)){
            
            if(Int(x) > X)
            {
                X = Int(x)
                solution = d
                print("** D = \(d) ,X = \(x) , Y = \(y)")
            }else{
                 print("D = \(d) ,X = \(x) , Y = \(y)")
            }
            
            break loop
        }
    }
}

let date2 = Date()

let interval = date2.timeIntervalSince(date)
print("solution \(solution) ,time = \(interval)")


