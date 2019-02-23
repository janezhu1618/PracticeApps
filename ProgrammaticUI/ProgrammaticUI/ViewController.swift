//
//  ViewController.swift
//  ProgrammaticUI
//
//  Created by Jane Zhu on 2/23/19.
//  Copyright © 2019 JaneZhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       // let x = self.view.frame.width/2 - square.width/2
        //let y = self.view.frame.height/2 - square.height/2
        let square = UIView(frame: CGRect(x: self.view.frame.width/2 - 50, y: self.view.frame.height/2 - 50, width: 100, height: 100))
        square.backgroundColor = .red
        self.view.addSubview(square)
    }


}

