//
//  ViewController.swift
//  UIButton+StatefulBackgroundColor
//
//  Created by Jai Govindani on 6/9/14.
//  Copyright (c) 2014 Jai Govindani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var button: UIButton
                                
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        button = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        self.view.addSubview(button);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

