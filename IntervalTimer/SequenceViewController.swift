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
    
    
    
    
}
