//
//  ViewController.swift
//  School_Anouncment_FinalApp
//
//  Created by Siddhartha Arya on 10/7/15.
//  Copyright © 2015 Siddhartha Arya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var startDate : NSDate!

    @IBOutlet var schoolText: UITextField!
    @IBOutlet var nameText: UITextField!
    @IBOutlet var uiDatePicker: UIDatePicker!
    var name = ""
    var school = ""
    @IBAction func datePickerAction(sender: AnyObject) {
        startDate = uiDatePicker.date
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name = nameText.text!
        school = schoolText.text!
        
    }
    
    
    
    /*override func viewWillAppear(animated: Bool) {
        print("hello")
        let defaults = NSUserDefaults.standardUserDefaults()
        if let dataCameBack = defaults.objectForKey("mySchedule"){
            self.performSegueWithIdentifier("initialToHome", sender: self)
            print("1")
        }
        else {
            print("2")
        } 
        
    }*/
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "scheduleSegue"){
            var dvc = segue.destinationViewController as! ScheduleViewController
            dvc.starterDate = startDate
            dvc.school = school
            dvc.name = name
        }
        else{
            
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

