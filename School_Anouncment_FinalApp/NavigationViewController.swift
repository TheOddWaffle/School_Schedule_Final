//
//  NavigationViewController.swift
//  School_Anouncment_FinalApp
//
//  Created by Kenny on 7/16/15.
//  Copyright © 2015 Siddhartha Arya. All rights reserved.
//

import UIKit

class NavigationViewController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        print("hello")
        let defaults = NSUserDefaults.standardUserDefaults()
        if let dataCameBack = defaults.objectForKey("mySchedule"){
            self.performSegueWithIdentifier("navigationlToHOme", sender: self)
            print("1")
        }
        else {
            print("2")
        }
    }
}