//
//  StickyView.swift
//  Cartimity
//
//  Created by Neil on 4/11/16.
//  Copyright © 2016 soin. All rights reserved.
//

import UIKit

extension UIView: Stickeable {
    public func moveUp(notification:NSNotification)  {
        if let userInfo = notification.userInfo {
            if let keyboardSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
                self.frame = CGRect(origin: CGPoint(x:self.originalPosition.x , y:keyboardSize.height), size: self.frame.size)
                superview?.layoutIfNeeded()
            }
        }
    }
    
}
