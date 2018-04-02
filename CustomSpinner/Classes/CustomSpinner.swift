//
//  CustomSpinner.swift
//  Tempo
//
//  Created by William Nabechima on 7/6/16.
//  Copyright © 2016 Kanamobi. All rights reserved.
//

import UIKit

public class CustomSpinner: UIView {
    private static var instance: CustomSpinner?
    @IBOutlet private var imageSpinner: UIImageView!
    
    public class func sharedInstance() -> CustomSpinner! {
        if self.instance == nil {
            self.instance = (Bundle(for: CustomSpinner.self).loadNibNamed("CustomSpinner", owner: nil, options: nil)![0] as! CustomSpinner)
            self.instance?.frame = UIScreen.main.bounds
            
        }
        return self.instance!
    }
    
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    public func hasImages() -> Bool {
        
        
        if (self.imageSpinner.animationImages?.count)! > 0 {
            return true
        }else {
            return false
        }
    }
    public func setImageArray(array : [UIImage]) {
        imageSpinner.animationImages = array
        imageSpinner.animationDuration = 1
    }
    public func startAnimating() {
        imageSpinner.startAnimating()
        self.superview?.bringSubview(toFront: self)
        if self.isHidden == false {
            return
        }
        self.isHidden = false
    }
    public func stopAnimating() {
        self.isHidden = true
        imageSpinner.stopAnimating()
    }
}
