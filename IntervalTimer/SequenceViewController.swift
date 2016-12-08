//
//  SequenceViewController.swift
//  IntervalTimer
//
//  Created by Benson on 2016-12-02.
//  Copyright © 2016 Benson Programming. All rights reserved.
//

import UIKit

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
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    
    struct Segment {
        
        var name: String
        var time: Int
        
        init(withName : String, ofTime : Int) {
            name = withName
            time = ofTime
        }
    }
    
    var segments : [Segment] = []
    
    var firstSegment = Segment(withName: "Hard", ofTime: 60)
    
    
    
    segments.append(firstSegment)
    
    
    var secondSegment = Segment(withName: "Easy", ofTime: 120)
    
    
    
    
    segments.append(secondSegment)
    
    
    
    
    var thirdSegment = Segment(withName: "Medium", ofTime: 40)
    
    
    
    
    segments.append(thirdSegment)
    
    
    var fourthSegment = Segment(withName: "Hard", ofTime: 70)
    
    
    
    segments.append(fourthSegment)
    
    
    
    var fifthSegment = Segment(withName: "Medium", ofTime: 60)
    
    
    
    
    segments.append(fifthSegment)
    
    
    var sixthSegment = Segment(withName: "Easy", ofTime: 600)
    
    
    
    segments.append(sixthSegment)
    
    
    
    var seventhSegment = Segment(withName: "Hard", ofTime: 60)
    
    
    
    
    segments.append(seventhSegment)
    
    
    var eighthSegment = Segment(withName: "Easy", ofTime: 50)
    
    
    
    segments.append(eighthSegment)
    
    
    var ninethSegment = Segment(withName: "Medium", ofTime: 90)
    
    
    
    segments.append(ninethSegment)
    
    
    
    var tenthSegment = Segment(withName: "Stretch", ofTime: 600)
    
    
    
    segments.append(tenthSegment)
    
    
    
    
}
