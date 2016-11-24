//: Playground - noun: a place where people can play

import Cocoa


struct Segment {
    
    var name: String
    var time: Int
    
    init(withName : String, ofTime : Int) {
        name = withName
        time = ofTime
    }
}



var firstSegment = Segment(withName: "Hard", ofTime: 60)


firstSegment.name

firstSegment.time



var sequence : [Segment] = []

