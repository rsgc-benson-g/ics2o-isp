//
//  ViewController.swift
//  IntervalTimer
//
//  Created by Benson on 2016-10-31.
//  Copyright © 2016 Benson Programming. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var currentLabel: UILabel!
    
    @IBOutlet weak var nextLabel: UILabel!
    
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
        
        timerValue.text = "Create your Session!"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func startTimer(_ sender: AnyObject) {
        //detect when when it is a pause vs. start
        
        if segments.count > 0 {
            
            
            //only if the array has more values to display
            if currentSegment != segments.count - 1 {
                
                nextLabel.text = "Next Segment: " + String(segments[currentSegment + 1].name)
                currentLabel.text = "Current Segment: " + String(segments[currentSegment].name)
                
            }
            
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
                
                //enable toggle
                timerOn = true
                
                
            }
            // if the array is empty - tell this to the user
        } else {
            timerValue.text = "Error. Name or time invalid."
        }
        
    }
    
    @IBAction func resetTimer(_ sender: AnyObject) {
        
        //avoid crashes on reset by only running if there is at least one segment in the array
        if segments.count != 0 {
            //invalidate timer
            timer.invalidate()
            //set current segment
            currentSegment = 0
            //set start button to start
            startButton.setTitle("Start", for: UIControlState.normal)
            //set time left
            timeLeft = segments[currentSegment].time
            //update timer display
            timerValue.text = String(segments[currentSegment].time)
            //turn toggle off
            timerOn = false
            //set current and next labels
            currentLabel.text = "Current Segment: " + String(segments[currentSegment].name)
            nextLabel.text = "Next Segment: " + String(segments[currentSegment + 1].name)
            
        }
    }
    
    
    
    //decreases timer value
    func decrement(){
        //decrement by one second
        timeLeft = timeLeft - 1
        //set timer value to be the time left
        timerValue.text = "\(timeLeft)"
        
        if (timeLeft < 1) {
            timer.invalidate()
            
            
            // load the next segment if it exists
            
            if currentSegment != segments.count - 1 {
                
                // go to next segment
                currentSegment += 1
                //set time left
                timeLeft = segments[currentSegment].time + 1
                //starttimer
                timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: Selector("decrement"), userInfo: nil, repeats: true)
                currentLabel.text = "Current Segment: " + String(segments[currentSegment].name)
                nextLabel.text = "Next Segment: Last One"
                
                
            } else {
                
                //final text changes
                timerValue.text = "Session Completed"
                startButton.setTitle("Start", for: UIControlState.normal)
                currentLabel.text = "Current Segment:"
                nextLabel.text = "Next Segment: "
            }
            
            
        }
        
        if currentSegment + 1 == segments.count {
            //hide label if you are on the last segment
            nextLabel.text = ""
            
        }
    }
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "backToMain" {
            
        }
    }
    
}

