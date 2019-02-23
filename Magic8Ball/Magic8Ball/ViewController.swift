//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Jane Zhu on 2/22/19.
//  Copyright © 2019 JaneZhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let images = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    @IBOutlet weak var magic8BallImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateMagic8Ball()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateMagic8Ball()
    }

    fileprivate func updateMagic8Ball() {
        magic8BallImageView.image = UIImage(named: images[Int.random(in: 0...4)])
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateMagic8Ball()
    }
    
}

