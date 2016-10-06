//
//  ViewController.swift
//  HellaCells
//
//  Created by Flatiron School on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    
    var number: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let number = number {
            numberLabel?.text = String(number)
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

