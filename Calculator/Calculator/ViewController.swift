//
//  ViewController.swift
//  Calculator
//
//  Created by Jane Zhu on 2/23/19.
//  Copyright © 2019 JaneZhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var displayLabel: UILabel!
    private var display = ""
    private var operationToPerform: Operation?
    private var calculator = Calculator()

    override func viewDidLoad() {
        super.viewDidLoad()
        displayLabel.text = "0"
    }

    @IBAction func numbersPressed(_ sender: UIButton) {
        clearButton.setTitle("c", for: .normal)
        if sender.tag < 10 {
            display += sender.tag.description
        } else {
            guard !display.contains(".") else { return }
            display += "."
        }
        updateUI()
    }
    
    private func updateUI() {
        if display.hasSuffix(".0") {
            displayLabel.text = display.replacingOccurrences(of: ".0", with: "")
        } else {
            displayLabel.text = display
        }
    }
    
    @IBAction func operationPressed(_ sender: UIButton) {
        guard display != "" else { return }
        calculator.firstNumAsString = display
        display.removeAll()
//        sender.backgroundColor = .lightGray
//        sender.setTitleColor(.white, for: .normal)
        switch sender.tag {
        case 11:
            operationToPerform = .addition
        case 12:
            operationToPerform = .subtraction
        case 13:
            operationToPerform = .multiplication
        case 14:
            operationToPerform = .division
        default:
            print("error")
        }
    }
    
    
    @IBAction func equalButtonPressed(_ sender: UIButton) {
        calculator.secondNumAsString = display
        guard let firstNum = calculator.firstNumAsDouble, let secondNum = calculator.secondNumAsDouble else {
            print("invalid numbers 1st - \(calculator.firstNumAsDouble ?? 0.0), 2nd - \(calculator.secondNumAsDouble ?? 0.0)")
            return }
        if let safeOperationToPerfrom = operationToPerform {
            switch safeOperationToPerfrom {
            case .addition:
                display = calculator.add(firstNum, plus: secondNum).description
            case .subtraction:
                display = calculator.subtract(firstNum, minus: secondNum).description
            case .multiplication:
                display = calculator.multiply(firstNum, times: secondNum).description
            case .division:
                display = calculator.divide(firstNum, divideBy: secondNum).description
            }
            updateUI()
        }
    }
    
    @IBAction func percentButtonPressed(_ sender: UIButton) {
        guard display != "" else { return }
        if let safeDisplayNum = calculator.convertStringToDouble(numAsString: display) {
            display = calculator.percentage(safeDisplayNum).description
            updateUI()
        }
    }
    
    @IBAction func positiveOrNegativeButtonPressed(_ sender: UIButton) {
        guard display != "" else { return }
        if let safeDisplayNum = calculator.convertStringToDouble(numAsString: display) {
            display = calculator.convertToNegativeOrPositive(safeDisplayNum).description
            updateUI()
        }
    }
    
    fileprivate func allClear() {
        display = ""
        calculator.firstNumAsString = ""
        calculator.secondNumAsString = ""
        operationToPerform = nil
        clearButton.setTitle("c", for: .normal)
    }
    
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        if clearButton.titleLabel!.text == "c" {
            display = ""
            updateUI()
            clearButton.setTitle("ac", for: .normal)
        } else {
            allClear()
        }
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        allClear()
    }
    
}

