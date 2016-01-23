//
//  VisualEffectsExtender.swift
//  MYFLIX
//
//  Created by Brian Wilson on 1/22/16.
//  Copyright © 2016 GetRunGo. All rights reserved.
//

import UIKit

@IBDesignable
class VisualEffectsExtender: UIVisualEffectView {
    
    
    @IBInspectable var borderColor: UIColor = UIColor.clearColor() {
        didSet {
            layer.borderColor = borderColor.CGColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
}
