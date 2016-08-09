//
//  ViewController.swift
//  TimeKeeper
//
//  Created by Nelson Chow on 2016-08-08.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    let TIME_INTERVAL: NSTimeInterval = 1
    
    @IBOutlet weak var timerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create timer that fires every TIME_INTERVAL (seconds)
        var timer = NSTimer.scheduledTimerWithTimeInterval(TIME_INTERVAL, target: self, selector: #selector(ViewController.updateTime), userInfo: nil, repeats: true)
        
    }
    
    // MARK: - General Functions
    
    func updateTime() {
        
    }
}

