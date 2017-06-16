//
//  Class.swift
//  Faithbuilders
//
//  Created by Curtis Wilson on 6/15/16.
//  Copyright © 2016 Eusebeia. All rights reserved.
//

import Foundation

class Class {
    let title: String
    let speaker: Speaker?
    let location: String
    let timeStart: String
    let timeEnd: String
    let day: Int
    
    init(title: String, speaker:Speaker?, location:String, timeStart: String, timeEnd:String, day: Int) {
        self.title = title
        self.speaker = speaker
        self.location = location
        self.timeStart = timeStart
        self.timeEnd = timeEnd
        self.day = day
    }
}