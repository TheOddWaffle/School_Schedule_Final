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
    
    @IBOutlet var view1: UIView!
    @IBOutlet var view2: UIView!
    @IBOutlet var view3: UIView!
    @IBOutlet var view4: UIView!

    override func viewDidLoad() {
        
        //createSchedule()
        //view1.backgroundColor = UIColor(red: 239/255, green: 255/255, blue: 192/255, alpha: 1.0)
       
        super.viewDidLoad()
        self.view.setNeedsDisplay()
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
