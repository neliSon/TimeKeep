//
//  TimerViewController.swift
//  TimeKeeper
//
//  Created by Nelson Chow on 2016-08-08.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {
    
    // MARK: - Properties
    let TIME_INTERVAL: NSTimeInterval = 1
    
    var seconds: Int = 0
    var timerOn: Bool = false
    var timer = NSTimer()
    
    @IBOutlet weak var timerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    // MARK: - Actions
    @IBAction func togglePlayPressed(sender: UIButton) {
        if !(timerOn) {
            timerOn = true
        // Create timer that fires every TIME_INTERVAL (seconds)
        timer = NSTimer.scheduledTimerWithTimeInterval(TIME_INTERVAL, target: self, selector: #selector(TimerViewController.updateTime), userInfo: nil, repeats: true)
        } else {
            timerOn = false
            timer.invalidate()
        }
    }
    
    // MARK: - General Functions
    
    func updateTime() {
        incrementTime()
        timerLabel.text = timeString(seconds)
    }
    
    func incrementTime() {
        seconds += 1
    }
    
    func secondsToHoursMinutesSeconds(seconds: Int) -> (Int, Int, Int){
        return ((seconds / (3600)), ((seconds / 60) % 60), (seconds % 60))
    }
    
    func timeString(seconds: Int) -> String {
        
        let (h,m,s) = secondsToHoursMinutesSeconds(seconds)
        
        return String(format: "%0.2d:%0.2d:%0.2d", h, m, s)
    }
}

