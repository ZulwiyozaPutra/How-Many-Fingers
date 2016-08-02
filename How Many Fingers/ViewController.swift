//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Zulwiyoza Putra on 8/2/16.
//  Copyright © 2016 Zulwiyoza Putra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fingersTextField: UITextField!
    
    @IBAction func guessButton(sender: AnyObject) {
        
        let randomFingers = String(arc4random_uniform(6))
        
        if fingersTextField == randomFingers {
            resultLabel.text = "You are rignt"
        } else {
            resultLabel.text = "wrong, it was \(randomFingers)"
        }
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

