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

    override func viewDidLoad() {
        super.viewDidLoad()
        createSchedule()
            }

    func createSchedule() {
        var xLocation = CGFloat(50)
        for course in classesArray{
            var label = UILabel(frame: CGRectMake(0, 0, 200, 21))
            label.center = CGPointMake(xLocation, 100)
            label.textAlignment = NSTextAlignment.Center
            
            label.text = "\(course)"
            self.view.addSubview(label)
            xLocation = CGFloat(Int(xLocation) + 60)
        }
    }
    
}
