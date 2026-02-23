//
//  ViewController.swift
//  Work Timer
//
//  Created by Ellie Tran on 1/17/26.
//

import Cocoa
import Foundation

class ViewController: NSViewController {
    
    @IBOutlet weak var label_timer: NSTextField!
    
    var timer: Timer?
    var seconds: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerFired), userInfo: nil, repeats: true)
    }

    @objc func timerFired() {
        seconds += 1
        label_timer.stringValue = String(seconds)
    }



}

