//
//  Schedule.swift
//  School_Anouncment_FinalApp
//
//  Created by Kenny on 7/13/15.
//  Copyright © 2015 Siddhartha Arya. All rights reserved.
//

import Foundation

class Schedule: NSObject, NSCoding {
    var classesA:[String]
    var classesB: [String]
    var startingDate:NSDate
    
    init(classListADay:[String], classListBDay: [String], start:NSDate) {
        self.classesA = classListADay
        self.startingDate = start
        self.classesB = classListBDay
    }
    
    @objc func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(classesA, forKey: "classesA")
        aCoder.encodeObject(startingDate, forKey: "startingDate")
        aCoder.encodeObject(classesB, forKey: "classesB")
    }
    
    @objc required init?(coder aDecoder: NSCoder) {
        self.classesA = aDecoder.decodeObjectForKey("classesA") as! [String]
        self.classesB = aDecoder.decodeObjectForKey("classesB") as! [String]
        self.startingDate = aDecoder.decodeObjectForKey("startingDate") as! NSDate
    }
}