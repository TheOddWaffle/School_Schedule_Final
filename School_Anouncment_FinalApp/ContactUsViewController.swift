//
//  ContactUsViewController.swift
//  School_Anouncment_FinalApp
//
//  Created by Siddhartha Arya on 15/7/15.
//  Copyright © 2015 Siddhartha Arya. All rights reserved.
//

import UIKit
import MessageUI

class ContactUsViewController: UIViewController, MFMailComposeViewControllerDelegate, UITextFieldDelegate, UITextViewDelegate {

   
    @IBOutlet weak var subject: UITextField!
    
    
    @IBOutlet weak var body: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        subject.delegate = self
        body.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func mailComposeController(controller: MFMailComposeViewController, didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
        body.text = textView.text
    
    if text == "\n" {
    textView.resignFirstResponder()
    
    return false
        
    }
    
    return true
        
    }
}

