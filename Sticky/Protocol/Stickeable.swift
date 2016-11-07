//
//  KeyboardButton.swift
//  Cartimity
//
//  Created by Neil on 3/11/16.
//  Copyright © 2016 soin. All rights reserved.
//

import Foundation
import UIKit


//Keyboard view protocol
public  protocol Stickeable   {
    func moveUp(notification:NSNotification)
}



public extension Stickeable where Self:UIView
{
    var stickInKeyboardEnabled:Bool   {
        get {
            return false
        }
        set(sticky) {
            
            if (sticky) {
                NotificationCenter.default.addObserver(self, selector: #selector(Self().moveUp(notification:)), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
            }
            else {
                NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIKeyboardWillShow, object: nil)
            }
            
        }
    }

    var originalPosition:CGPoint {
        get {
            return getAssociatedValue(key: "originalPosition", object: self, initialValue:{return CGPoint(x:0,y:0)})
        }
        set(newValue) {
            set(associatedValue:self.frame.origin, key: "originalPosition", object: self)
        }
    }
    
    
}

