//
//  Calculator.swift
//  Calculator
//
//  Created by Jane Zhu on 2/23/19.
//  Copyright © 2019 JaneZhu. All rights reserved.
//

import Foundation

class Calculator {
    var firstNumAsString: String = ""
    var secondNumAsString: String = ""
    var firstNumAsDouble: Double? {
        return Double(firstNumAsString)
    }
    var secondNumAsDouble: Double? {
        return Double(secondNumAsString)
    }
    
    func add(_ num1: Double, plus num2: Double) -> Double {
        return num1 + num2
    }
    
    func subtract(_ num1: Double, minus num2: Double) -> Double {
        return num1 - num2
    }
    
    func multiply(_ num1: Double, times num2: Double) -> Double {
        return num1 * num2
    }
    
    func divide(_ num1: Double, divideBy num2: Double) -> Double {
        return num1 / num2
    }
    
    func convertToNegativeOrPositive(_ num: Double) -> Double {
        return -1 * num
    }
    
    func percentage(_ num: Double) -> Double {
        return num/100
    }
    
    func convertStringToDouble(numAsString: String) -> Double? {
        return Double(numAsString)
    }
}
