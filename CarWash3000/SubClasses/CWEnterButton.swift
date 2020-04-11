//
//  CWEnterButton.swift
//  CarWash3000
//
//  Created by Avni Rexhaj on 3/5/20.
//  Copyright © 2020 Avni Rexhaj. All rights reserved.
//

import UIKit

class CWEnterButton: UIButton {
    
    
    
    var isON = false
    
    override init(frame: CGRect){
        super.init(frame: frame)
        initButton()
    }
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        initButton()
    }
    
    func initButton(){
        layer.borderWidth = 2.0
        layer.borderColor = Colors.greenButton.cgColor
        layer.cornerRadius = frame.size.height/2
        
        setTitleColor(Colors.greenButton, for: .normal)
        addTarget(self, action: #selector(CWEnterButton.buttonPressed), for: .touchUpInside)
    }
    
    @objc func buttonPressed() {
        activateButton(bool: !isON)
    }

    var customerNumber = 20
     func activateButton(bool: Bool){
        
        isON = bool
        if(isON == bool)
        {
            let color = bool ? Colors.greenButton : .clear
            
            let title = bool ? "CarWash is ON" : "CarWash is OFF"
            
            let titleColor = bool ? . white : Colors.greenButton
            
            setTitle(title, for: .normal)
            setTitleColor(titleColor, for: .normal)
            backgroundColor = color
            customerNumber += 1
            print(customerNumber)
        }
    }
}

