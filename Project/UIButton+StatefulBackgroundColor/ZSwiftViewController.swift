//
//  ZSwiftViewController.swift
//  UIButton+StatefulBackgroundColor
//
//  Created by Jai Govindani on 6/14/14.
//  Copyright (c) 2014 Zodio. All rights reserved.
//

//import Foundation
import UIKit
class ZSwiftViewController : UIViewController {
    
    @IBOutlet var button : UIButton
    
    
    @IBAction func buttonTapped(sender : AnyObject) {

    }
    
    override func viewDidLoad() {
        let belizeHoleBlue = UIColor(red:41/255.0, green:128/255.0, blue:185/255.0, alpha:1.0)
        let sunflowerYellow = UIColor(red:241/255.0, green:196/255.0, blue:15/255.0, alpha:1.0)
        
        let normalImage = UIImage(named:"875-skull")
        let highlightedImage = UIImage(named:"913-skull-selected")
        
        button.setImage(normalImage, forState: .Normal)
        button.setImage(highlightedImage, forState: .Highlighted)
        button.setBackgroundColor(belizeHoleBlue, forState: .Normal)
        button.setBackgroundColor(sunflowerYellow, forState: .Highlighted)
        
    }
}
