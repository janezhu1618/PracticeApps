//
//  ViewController.swift
//  EggTimer
//
//  Created by Jane Zhu on 4/4/19.
//  Copyright © 2019 JaneZhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var timer = Timer()
    private var actualTime = 210

    @IBOutlet weak var timerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    fileprivate func updateUI() {
        timerLabel.text = actualTime.description
    }
    
    @objc private func decreaseTimer() {
        guard actualTime > 0 else {
            timer.invalidate()
            return
        }
        actualTime -= 1
        updateUI()
    }

    @IBAction func pauseButtonPressed(_ sender: UIBarButtonItem) {
        timer.invalidate()
    }
    
    @IBAction func playButtonPressed(_ sender: UIBarButtonItem) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(decreaseTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func subtract10ButtonPressed(_ sender: UIBarButtonItem) {
        actualTime -= 10
        updateUI()
    }
    
    @IBAction func add10ButtonPressed(_ sender: UIBarButtonItem) {
        actualTime += 10
        updateUI()
    }
    
    @IBAction func resetButtonPressed(_ sender: UIBarButtonItem) {
        timer.invalidate()
        actualTime = 210
        updateUI()
    }
    
}

