//
//  ViewExtender.swift
//  IB
//
//  Created by Brian Wilson on 1/20/16.
//  Copyright © 2016 GetRunGo. All rights reserved.
//


import UIKit

@IBDesignable
class ViewExtender: UIView {
    
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
