//
//  ViewController.swift
//  CustomSpinner
//
//  Created by william on 04/02/2018.
//  Copyright (c) 2018 william. All rights reserved.
//

import UIKit
import CustomSpinner
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        CustomSpinner.sharedInstance().startAnimating()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

