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

    
    var timer = Timer()
    //initial value
    var timeLeft = 60
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func startTimer(_ sender: AnyObject) {
        
        //initilieze timer used to count down
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: Selector("decrement"), userInfo: nil, repeats: true)
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

