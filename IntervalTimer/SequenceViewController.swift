//
//  SequenceViewController.swift
//  IntervalTimer
//
//  Created by Benson on 2016-12-02.
//  Copyright © 2016 Benson Programming. All rights reserved.
//

import UIKit

struct Segment {
    
    var name: String
    var time: Int
    
    init(withName : String, ofTime : Int) {
        name = withName
        time = ofTime
    }
}

class SequenceViewController: UIViewController {
    
    @IBOutlet weak var nameOne: UITextField!
    @IBOutlet weak var nameTwo: UITextField!
    @IBOutlet weak var nameThree: UITextField!
    @IBOutlet weak var nameFour: UITextField!
    @IBOutlet weak var nameFive: UITextField!
    @IBOutlet weak var nameSix: UITextField!
    @IBOutlet weak var nameSeven: UITextField!
    @IBOutlet weak var nameEight: UITextField!
    @IBOutlet weak var nameNine: UITextField!
    @IBOutlet weak var nameTen: UITextField!
    
    
    @IBOutlet weak var timeOne: UITextField!
    @IBOutlet weak var timeTwo: UITextField!
    @IBOutlet weak var timeThree: UITextField!
    @IBOutlet weak var timeFour: UITextField!
    @IBOutlet weak var timeFive: UITextField!
    @IBOutlet weak var timeSix: UITextField!
    @IBOutlet weak var timeSeven: UITextField!
    @IBOutlet weak var timeEight: UITextField!
    @IBOutlet weak var timeNine: UITextField!
    @IBOutlet weak var timeTen: UITextField!
    
    
    
    var segments : [Segment] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 1...10 {
            
            segments.append(Segment(withName: "", ofTime: 0))
        }
        
        
    }
    
    @IBAction func firstSegmentName(_ sender: Any) {
        if let name = nameOne.text {
            segments[0].name = name
        }
    }
    
    @IBAction func secondSegmentName(_ sender: Any) {
        if let name = nameTwo.text {
            segments[1].name = name
        }
    }
    
    @IBAction func thirdSegmentName(_ sender: Any) {
        if let name = nameThree.text {
            segments[2].name = name
        }
    }
    
    
    @IBAction func fourthSegmentName(_ sender: Any) {
        if let name = nameFour.text {
            segments[3].name = name
        }
    }
    
    @IBAction func fifthSegmentName(_ sender: Any) {
        if let name = nameFive.text {
            segments[4].name = name
        }
    }
    
    
    @IBAction func sixthSegmentName(_ sender: Any) {
        if let name = nameSix.text {
            segments[5].name = name
        }
    }
    
    
    @IBAction func seventhSegmentName(_ sender: Any) {
        if let name = nameSeven.text {
            segments[6].name = name
        }
    }
    
    
    @IBAction func eighthSegmentName(_ sender: Any) {
        if let name = nameEight.text {
            segments[7].name = name
        }
    }
    
    
    @IBAction func ninethSegmentName(_ sender: Any) {
        if let name = nameNine.text {
            segments[8].name = name
        }
    }
    
    
    @IBAction func tenthSegmentName(_ sender: Any) {
        if let name = nameTen.text {
            segments[9].name = name
        }
    }
    
    
    
    @IBAction func firstSegmentTime(_ sender: Any) {
        if let time = timeOne.text {
            if let intTime = Int(time) {
                segments[0].time = intTime
            }
        }
    }

    @IBAction func secondSegmentTime(_ sender: Any) {
        if let time = timeTwo.text {
            if let intTime = Int(time) {
                segments[1].time = intTime
            }
        }
    }
    
    
    @IBAction func thirdSegmentTime(_ sender: Any) {
        if let time = timeThree.text {
            if let intTime = Int(time) {
                segments[2].time = intTime
            }
        }
    }
    
    
    @IBAction func fourthSegmentTime(_ sender: Any) {
        if let time = timeFour.text {
            if let intTime = Int(time) {
                segments[3].time = intTime
            }
        }
    }
    
    
    @IBAction func fifthSegmentTime(_ sender: Any) {
        if let time = timeFive.text {
            if let intTime = Int(time) {
                segments[4].time = intTime
            }
        }
    }
    
    
    @IBAction func sixthSegmentTime(_ sender: Any) {
        if let time = timeSix.text {
            if let intTime = Int(time) {
                segments[5].time = intTime
            }
        }
    }
    
    
    @IBAction func seventhSegmentTime(_ sender: Any) {
        if let time = timeSeven.text {
            if let intTime = Int(time) {
                segments[6].time = intTime
            }
        }
    }
    
    
    @IBAction func eighthSegmentTime(_ sender: Any) {
        if let time = timeEight.text {
            if let intTime = Int(time) {
                segments[7].time = intTime
            }
        }
    }
    
    
    @IBAction func ninethSegmentTime(_ sender: Any) {
        if let time = timeNine.text {
            if let intTime = Int(time) {
                segments[8].time = intTime
            }
        }
    }
    
    
    
    @IBAction func tenthSegmentTime(_ sender: Any) {
        if let time = timeTen.text {
            if let intTime = Int(time) {
                segments[9].time = intTime
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "backToMain" {
            if let destination = segue.destination as? ViewController {
                destination.segments = self.segments
            }
        }
    }
    
    
}
