//
//  ViewController.swift
//  SimplyTimer
//
//  Created by Marcin Magiera on 31/07/2020.
//  Copyright © 2020 Magme Agency. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    var timerDisplayed = 0
    var myTimer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startBtn(_ sender: UIButton) {
    }
    
    @IBAction func StopBtn(_ sender: UIButton) {
    }
    
    @IBAction func resetBtn(_ sender: UIButton) {
    }
    
}

