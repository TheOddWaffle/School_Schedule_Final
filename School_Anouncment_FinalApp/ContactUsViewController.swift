//
//  ContactUsViewController.swift
//  School_Anouncment_FinalApp
//
//  Created by Siddhartha Arya on 14/7/15.
//  Copyright © 2015 Siddhartha Arya. All rights reserved.
//

import UIKit
import Foundation
import MessageUI

class ContactUsViewController: UIViewController,MFMailComposeViewControllerDelegate, UITextFieldDelegate, UITextViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBOutlet weak var nameText: UITextField!
    
    @IBOutlet weak var phoneText: UITextField!
    
    @IBOutlet weak var emailText: UITextField!
    
    
    @IBOutlet weak var questionText: UITextField!
  
    
    @IBAction func sendButtonTapped(sender: UIButton) {
        
       /* let emailText = "siddhartha.arya@gmail.com"
        let url = NSURL(string: "mailto:\(emailText)")
        UIApplication.sharedApplication().openURL(url!)
        
        //let url = NSURL(string: "siddhartha.arya@gmail.com")
        //  UIApplication.sharedApplication().openURL(url!)*/
        
        
        
        
        /*let mailComposeViewController = configuredMailComposeViewController()
        if MFMailComposeViewController.canSendMail() {
        self.presentViewController(mailComposeViewController, animated: true, completion: nil)
        } else {
        self.showSendMailErrorAlert()
        }
        }
        func configuredMailComposeViewController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self
        
        mailComposerVC.setToRecipients(["siddhartha.arya@gmail.com"])
        mailComposerVC.setSubject("")
        mailComposerVC.setMessageBody("Sending e-mail in-app is not so bad!", isHTML: false)
        
        return mailComposerVC
        
        }
        
        func showSendMailErrorAlert() {
        let sendMailErrorAlert = UIAlertView(title: "Could Not Send Email", message: "Your device could not send e-mail.  Please check e-mail configuration and try again.", delegate: self, cancelButtonTitle: "OK")
        sendMailErrorAlert.show()
        }
        
        func mailComposeController(controller: MFMailComposeViewController, didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        controller.dismissViewControllerAnimated(true, completion: nil)
        }*/
        
    }
}