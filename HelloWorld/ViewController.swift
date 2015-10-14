//
//  ViewController.swift
//  HelloWorld
//
//  Created by Ohashi Yusuke on 10/14/15.
//  Copyright © 2015 Ohashi Yusuke. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    @IBOutlet weak var myButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "hello world"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func myButtonAction(sender:AnyObject) {
        print("button pushed")
        if let url:NSURL = NSURL(string: "https://github.com/") {
            let safari:SFSafariViewController = SFSafariViewController(URL: url)
            self.presentViewController(safari, animated: true, completion: { () -> Void in
                
            })
        }
    }
}

