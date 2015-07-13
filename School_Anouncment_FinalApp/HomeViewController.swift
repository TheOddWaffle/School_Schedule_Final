//
//  HomeViewController.swift
//  School_Anouncment_FinalApp
//
//  Created by Siddhartha Arya on 10/7/15.
//  Copyright © 2015 Siddhartha Arya. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    var classesArray = ["egg", "duck", "suck"]
    
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
    var dayCounter = "A"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(A1text)
        if dayCounter == "A" {
            class1.text = A1text
            class2.text = A2text
            class3.text = A3text
            class4.text = A4text
            print(A1text)
        }
        }
}
