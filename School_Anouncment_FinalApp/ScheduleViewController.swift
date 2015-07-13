//
//  ScheduleViewController.swift
//  School_Anouncment_FinalApp
//
//  Created by Siddhartha Arya on 10/7/15.
//  Copyright © 2015 Siddhartha Arya. All rights reserved.
//

import UIKit

class ScheduleViewController: UIViewController {
    var A1text = ""
    var A2text = ""
    var A3text = ""
    var A4text = ""
    var B1text = ""
    var B2text = ""
    var B3text = ""
    var B4text = ""
    var textArray : String!
    
    @IBOutlet var A1: UITextField!
    @IBOutlet var A2: UITextField!
    @IBOutlet var A3: UITextField!
    @IBOutlet var A4: UITextField!
    @IBOutlet var B1: UITextField!
    @IBOutlet var B2: UITextField!
    @IBOutlet var B3: UITextField!
    @IBOutlet var B4: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onDoneButtonPressed(sender: AnyObject) {
        A1text = A1.text!
        A2text = A2.text!
        A3text = A3.text!
        A4text = A4.text!
        B1text = B1.text!
        B2text = B2.text!
        B3text = B3.text!
        B4text = B4.text!
        
        self.performSegueWithIdentifier("segue1", sender: ScheduleViewController.self)
        
        
        
       
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dvc = segue.destinationViewController as! HomeViewController
        dvc.A1text = A1text
        dvc.A2text = A2text
        dvc.A3text = A3text
        dvc.A4text = A4text
        dvc.B1text = B1text
        dvc.B2text = B2text
        dvc.B3text = B3text
        dvc.B4text = B4text
        
    }
}
