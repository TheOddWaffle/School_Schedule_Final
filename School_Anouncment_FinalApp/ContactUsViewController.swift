//
//  ContactUsViewController.swift
//  School_Anouncment_FinalApp
//
//  Created by Siddhartha Arya on 15/7/15.
//  Copyright © 2015 Siddhartha Arya. All rights reserved.
//

import UIKit

class ContactUsViewController: UIViewController, MFMailComposeViewControllerDelegate, UITextFieldDelegate, UITextViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var subject: UITextField!
    
    
    @IBOutlet weak var body: UITextView!
    
    
}
