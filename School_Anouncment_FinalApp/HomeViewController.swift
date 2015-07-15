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
    
    
    @IBOutlet var webView: UIWebView!
    @IBOutlet var dayAorB: UILabel!
    @IBOutlet var class1: UILabel!
    @IBOutlet var class2: UILabel!
    @IBOutlet var class3: UILabel!
    @IBOutlet var class4: UILabel!
    @IBOutlet var class1Image: UIImageView!
    @IBOutlet var class2Image: UIImageView!
    @IBOutlet var class3Image: UIImageView!
    @IBOutlet var class4Image: UIImageView!
    
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
    let url = "http://www.sas.edu.sg/page.cfm?p=651"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let dataCameBack = defaults.objectForKey("mySchedule") as! NSData
        let myNewSchedule = NSKeyedUnarchiver.unarchiveObjectWithData(dataCameBack) as? Schedule
        
        //loads web page
        let requestURL = NSURL(string:url)
        let request = NSURLRequest(URL: requestURL!)
        webView.loadRequest(request)
        checkDay()
        checkTime()
        if dayCounter == "Day: A" {
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
            dayCounter = "Day: A"
        }
        else{
            dayCounter = "Day: B"
        }
    }
    
    func checkTime() {
        let dateObject = NSDate()
        let timeFormatter = NSDateFormatter()
        timeFormatter.timeStyle = .MediumStyle
        let timeString = timeFormatter.stringFromDate(dateObject)
        let timeArr = split(timeString.characters){$0 == ":"}.map{String($0)}
        if Int(timeArr[0]) == 8 {
            if Int(timeArr[1]) > 9 {
                
                    class1Image.hidden = false
                    class2Image.hidden = true
                    class3Image.hidden = true
                    class4Image.hidden = true
                
            }
        }
        else if Int(timeArr[0]) == 9 && Int(timeArr[1]) < 30 {
            class1Image.hidden = false
            class2Image.hidden = true
            class3Image.hidden = true
            class4Image.hidden = true
        }
        else if Int(timeArr[0]) == 10 {
            class1Image.hidden = true
            class2Image.hidden = false
            class3Image.hidden = true
            class4Image.hidden = true
        }
        else if Int(timeArr[0]) == 11 && Int(timeArr[1]) < 20 {
            class1Image.hidden = true
            class2Image.hidden = false
            class3Image.hidden = true
            class4Image.hidden = true
        }
        else if Int(timeArr[0]) == 11 && Int(timeArr[1]) > 20 {
            class1Image.hidden = true
            class2Image.hidden = true
            class3Image.hidden = false
            class4Image.hidden = true
        }
        else if Int(timeArr[0]) == 12 && Int(timeArr[1]) < 46 {
            class1Image.hidden = true
            class2Image.hidden = true
            class3Image.hidden = false
            class4Image.hidden = true
        }
        else if Int(timeArr[0]) == 1 && Int(timeArr[1]) > 35 {
            class1Image.hidden = true
            class2Image.hidden = true
            class3Image.hidden = true
            class4Image.hidden = false
        }
        else if Int(timeArr[0]) == 2 && Int(timeArr[1]) < 55 {
            class1Image.hidden = true
            class2Image.hidden = true
            class3Image.hidden = true
            class4Image.hidden = false
        }
        else {
            class1Image.hidden = true
            class2Image.hidden = true
            class3Image.hidden = true
            class4Image.hidden = true
            print("nothing")
        }
            
    }
}
