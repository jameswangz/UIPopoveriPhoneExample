//
//  ViewController.swift
//  PopoverTest
//
//  Created by James Wang on 12/30/14.
//  Copyright (c) 2014 Dell Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pop(sender: AnyObject) {
        let popoverVC = storyboard?.instantiateViewControllerWithIdentifier("PopoverViewController") as UIViewController!
        popoverVC.preferredContentSize = CGSizeMake(300, 100)
        popoverVC.modalPresentationStyle = .Popover
        
        let popover = popoverVC.popoverPresentationController!
        popover.delegate = self
        popover.sourceView  = self.view
        popover.sourceRect = sender.frame
        popover.permittedArrowDirections = .Up | .Down
        presentViewController(popoverVC, animated: true, completion: nil)
    }

    @IBAction func alert(sender: AnyObject) {
        let alert = UIAlertView(title: "test", message: "hello", delegate: nil, cancelButtonTitle: "Cancel")
        alert.show()
    }
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.None
    }
}

