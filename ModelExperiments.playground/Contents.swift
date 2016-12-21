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

var segments : [Segment] = []

var firstSegment = Segment(withName: "Hard", ofTime: 60)


firstSegment.name

firstSegment.time

segments.append(firstSegment)


var secondSegment = Segment(withName: "Easy", ofTime: 120)


secondSegment.name

secondSegment.time

segments.append(secondSegment)




var thirdSegment = Segment(withName: "Medium", ofTime: 40)


thirdSegment.name

thirdSegment.time

segments.append(thirdSegment)


var fourthSegment = Segment(withName: "Hard", ofTime: 70)


fourthSegment.name

fourthSegment.time

segments.append(fourthSegment)



var fifthSegment = Segment(withName: "Medium", ofTime: 60)


fifthSegment.name

fifthSegment.time

segments.append(fifthSegment)


var sixthSegment = Segment(withName: "Easy", ofTime: 600)


sixthSegment.name

sixthSegment.time

segments.append(sixthSegment)



var seventhSegment = Segment(withName: "Hard", ofTime: 60)


seventhSegment.name

seventhSegment.time

segments.append(seventhSegment)


var eighthSegment = Segment(withName: "Easy", ofTime: 50)


eighthSegment.name

eighthSegment.time

segments.append(eighthSegment)


var ninethSegment = Segment(withName: "Medium", ofTime: 90)


ninethSegment.name

ninethSegment.time

segments.append(ninethSegment)



var tenthSegment = Segment(withName: "Stretch", ofTime: 600)


tenthSegment.name

tenthSegment.time

segments.append(tenthSegment)



