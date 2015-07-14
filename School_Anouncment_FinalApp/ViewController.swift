//
//  ViewController.swift
//  School_Anouncment_FinalApp
//
//  Created by Siddhartha Arya on 10/7/15.
//  Copyright © 2015 Siddhartha Arya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        print("hello")
        let defaults = NSUserDefaults.standardUserDefaults()
        if let dataCameBack = defaults.objectForKey("mySchedule"){
            self.performSegueWithIdentifier("initialToHome", sender: self)
            print("1")
        }
        else {
            print("2")
        }
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

