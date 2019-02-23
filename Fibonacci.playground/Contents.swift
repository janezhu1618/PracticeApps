import UIKit

//print up to the nth term in fibonacci sequence
func fibonacci(upTo num: Int) {
    print(0, terminator: ", ")
    print(1, terminator: ", ")
    var firstNum = 0
    var secondNum = 1
    for _ in 0..<9 {
        let currentNum = firstNum + secondNum
        print(currentNum, terminator: ", ")
        firstNum = secondNum
        secondNum = currentNum
        
    }
}

fibonacci(upTo: 9)
