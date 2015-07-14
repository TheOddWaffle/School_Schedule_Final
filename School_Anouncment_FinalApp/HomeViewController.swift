//
//  HomeViewController.swift
//  School_Anouncment_FinalApp
//
//  Created by Siddhartha Arya on 10/7/15.
//  Copyright © 2015 Siddhartha Arya. All rights reserved.
//

import UIKit
import Foundation

class HomeViewController: UIViewController {
    
    var classesArray = ["egg", "duck", "suck"]
    
    @IBOutlet var dayAorB: UILabel!
    @IBOutlet var class1: UILabel!
    @IBOutlet var class2: UILabel!
    @IBOutlet var class3: UILabel!
    @IBOutlet var class4: UILabel!
    var A1text = ""
    var A2text = ""
    var A3text = ""
    var A4text = ""
    var B1text = ""
    var B2text = ""
    var B3text = ""
    var B4text = ""
    var dayCounter = "C"
    let defaults = NSUserDefaults.standardUserDefaults()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let dataCameBack = defaults.objectForKey("mySchedule") as! NSData
        let myNewSchedule = NSKeyedUnarchiver.unarchiveObjectWithData(dataCameBack) as? Schedule
        

        
        
        checkDay()
        if dayCounter == "A" {
            let dataCameBack = defaults.objectForKey("mySchedule") as! NSData
            let myNewSchedule = NSKeyedUnarchiver.unarchiveObjectWithData(dataCameBack) as? Schedule
            var aDayArray : Array = (myNewSchedule?.classesA)!
            class1.text = aDayArray[0]
            class2.text = aDayArray[1]
            class3.text = aDayArray[2]
            class4.text = aDayArray[3]
            dayAorB.text = dayCounter
        }
        else {
            let dataCameBack = defaults.objectForKey("mySchedule") as! NSData
            let myNewSchedule = NSKeyedUnarchiver.unarchiveObjectWithData(dataCameBack) as? Schedule
            var bDayArray : Array = (myNewSchedule?.classesB)!
            class1.text = bDayArray[0]
            class2.text = bDayArray[1]
            class3.text = bDayArray[2]
            class4.text = bDayArray[3]
            dayAorB.text = dayCounter
        }
    }
    
    func checkDay() {
        let dataCameBack = defaults.objectForKey("mySchedule") as! NSData
        let myNewSchedule = NSKeyedUnarchiver.unarchiveObjectWithData(dataCameBack) as? Schedule
        let dateFormatter = NSDateFormatter()
        let startDate = myNewSchedule?.startingDate
        let endDate = NSDate()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let cal = NSCalendar.currentCalendar()
        let unit:NSCalendarUnit = .Day
        let components = cal.components(unit, fromDate: startDate!, toDate: endDate, options: NSCalendarOptions(rawValue: 0))
        let differenceOfDays = "\(components)"
        let differenceArray = Array(differenceOfDays.characters)
        var finalDifference = ""
        for(var i = differenceArray.count - 1; i > 0 ; i--) {
            if differenceArray[i] == " " {
                break
            }
            else {
                finalDifference = "\(differenceArray[i])" + finalDifference
                print(finalDifference)
            }
        }
        if Int(finalDifference)! % 2 == 0 {
            dayCounter = "A"
        }
        else{
            dayCounter = "B"
        }
    }
}
