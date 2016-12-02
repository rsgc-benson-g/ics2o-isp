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
    var timeLeft = 60
    var timerOn = true
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func startTimer(_ sender: AnyObject) {
        
       
        
        //initilieze timer used to count down
        timer.invalidate()
        
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: Selector("decrement"), userInfo: nil, repeats: true)
        
        // setting label
        startButton.setTitle("Pause", for: UIControlState.normal)
        
        if timerOn == true {
            
            timerOn = false
            
        }else{
            timerOn = true
        }
        
        if (timerOn ==  true){
            timer.invalidate()
            startButton.setTitle("Start", for: UIControlState.normal)
        }else{
            
           
            startButton.setTitle("Pause", for: UIControlState.normal)
            
        }
        
    }
    
    @IBAction func resetTimer(_ sender: AnyObject) {
        
        startButton.setTitle("Start", for: UIControlState.normal)
        timer.invalidate()
        timeLeft = 61
        timerValue.text = "60"
        timerOn = false
        
    }
    
    //decreases timer value
    func decrement(){
        
        timeLeft = timeLeft - 1
        timerValue.text = "\(timeLeft)"
        
        if (timeLeft < 0){
            timerValue.text = "0"
        }
    }
    
}

