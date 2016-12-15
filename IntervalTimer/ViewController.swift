//
//  ViewController.swift
//  IntervalTimer
//
//  Created by Benson on 2016-10-31.
//  Copyright © 2016 Benson Programming. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var timerValue: UILabel!
    
    @IBOutlet weak var startButton: UIButton!
    
    var timer = Timer()
    //initial value
    var segments : [Segment] = []
    var currentSegment = 0
    var timeLeft = Int.max
    var timerOn = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timerValue.text = "Pick a Sequence"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func startTimer(_ sender: AnyObject) {
        
        //detect when when it is a pause vs. start
        if timeLeft < segments[currentSegment].time + 1 {
            
            // IT'S A PAUSE
            // * invalidate timer
            timer.invalidate()
            //set title
            startButton.setTitle("Start", for: UIControlState.normal)
            


            //toggle
            
            //if its on turn it off
            if timerOn == true {
                
                timerOn = false
                
                
                //otherwise ignore
            } else {
                
                timerOn = true
                
            }
            
            //if it is off Set the title
            if timerOn == false {
                
                
                startButton.setTitle("Start", for: UIControlState.normal)
                
                
            //if not leave it
            } else {
                
        
                //set title
                startButton.setTitle("Pause", for: UIControlState.normal)
                //start timer
                 timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: Selector("decrement"), userInfo: nil, repeats: true)
            }
            
        } else {
            
            // IT'S A START OF THE TIMER
            
            // Setting the time remaining
            timeLeft = segments[currentSegment].time + 1
        
            //initiates timer
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: Selector("decrement"), userInfo: nil, repeats: true)
            
            // setting label to pause
            startButton.setTitle("Pause", for: UIControlState.normal)

           timerOn = true
            
          
        }
        
        
    }
    
    @IBAction func resetTimer(_ sender: AnyObject) {
        
        startButton.setTitle("Start", for: UIControlState.normal)
        timer.invalidate()
        timeLeft = segments[currentSegment].time
        timerValue.text = String(segments[currentSegment].time)
        timerOn = false
        
    }
    
    //decreases timer value
    func decrement(){
        
        timeLeft = timeLeft - 1
        timerValue.text = "\(timeLeft)"
        
        if (timeLeft < 1){
            timer.invalidate()
            currentSegment += 1
            timeLeft = segments[currentSegment].time
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: Selector("decrement"), userInfo: nil, repeats: true)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "backToMain" {
            
        }
    }
    
}

