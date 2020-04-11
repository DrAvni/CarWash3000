//
//  DesignableSlider.swift
//  CarWash3000
//
//  Created by Avni Rexhaj on 3/7/20.
//  Copyright © 2020 Avni Rexhaj. All rights reserved.
//

import UIKit

@IBDesignable
class DesignableSlider: UISlider {
    
    @IBInspectable var thumbImage: UIImage? {
        didSet {
            setThumbImage(thumbImage, for: .normal)
        }
    }
    
    @IBInspectable var thumbHighlightedImage: UIImage? {
        didSet {
            setThumbImage(thumbHighlightedImage, for: .highlighted)
        }
    }

}
