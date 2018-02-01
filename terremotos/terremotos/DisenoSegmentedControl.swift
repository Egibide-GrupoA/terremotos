//
//  DisenoSegmentControl.swift
//  terremotos
//
//  Created by  on 1/2/18.
//  Copyright © 2018 grupoA. All rights reserved.
//

import UIKit

// Allows you see your changes on the storyboard
@IBDesignable

class DisenoSegmentedControl: UIView {
    
    @IBInspectable
    var borderWidth: CGFloat = 0 {
        didSet{
            layer.borderWidth = borderWidth
        }
        
    }
    
    @IBInspectable
    var borderColor: UIColor = UIColor.clear {
        didSet{
            layer.borderColor = borderColor.cgColor
            
        }
        
    }
    
    override func draw(_ rect: CGRect){
        layer.cornerRadius = frame.height/2
        
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
