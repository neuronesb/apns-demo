//
//  ViewController.swift
//  Push Demo
//
//  Created by Michael Collins on 1/25/16.
//  Copyright © 2016 Neuron ESB. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController, MFMailComposeViewControllerDelegate {
    @IBOutlet weak var deviceIdentifier: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func mailDeviceIdentifier(sender: AnyObject) {
        let mailViewController = MFMailComposeViewController()
        mailViewController.mailComposeDelegate = self
        mailViewController.setSubject("Your iOS Device Identifier")
        mailViewController.setMessageBody(deviceIdentifier.text!, isHTML: false)
        presentViewController(mailViewController, animated: true, completion: nil)
    }
    
    func mailComposeController(controller: MFMailComposeViewController, didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}

