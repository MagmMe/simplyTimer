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
    @IBOutlet weak var startBtnOutlet: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startBtnOutlet.isEnabled = true
    }

    @IBAction func startBtn(_ sender: UIButton) {
        
        myTimer.invalidate()
        
        myTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    
        
    }
    
    @IBAction func StopBtn(_ sender: UIButton) {
        myTimer.invalidate()
        startBtnOutlet.isEnabled = true
    }
    
    @IBAction func resetBtn(_ sender: UIButton) {
        myTimer.invalidate()
        timerDisplayed = 0
        timerLabel.text = String(timerDisplayed)
        startBtnOutlet.isEnabled = true
    
    }
    
    
    @objc func updateTimer(){
        timerDisplayed += 1
        timerLabel.text = String(timerDisplayed)
        startBtnOutlet.isEnabled = false
    }
    
}

