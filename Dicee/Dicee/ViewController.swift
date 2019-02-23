//
//  ViewController.swift
//  Dicee
//
//  Created by Jane Zhu on 2/22/19.
//  Copyright © 2019 JaneZhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    private var randomDiceNum1 = 0
    private var randomDiceNum2 = 0
    @IBOutlet weak var dice2: UIImageView!
    @IBOutlet weak var dice1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    private func updateDiceImages() {
        randomDiceNum1 = Int.random(in: 0...5)
        randomDiceNum2 = Int.random(in: 0...5)
        dice1.image = UIImage(named: diceArray[randomDiceNum1])
        dice2.image = UIImage(named: diceArray[randomDiceNum2])
    }
    
}

