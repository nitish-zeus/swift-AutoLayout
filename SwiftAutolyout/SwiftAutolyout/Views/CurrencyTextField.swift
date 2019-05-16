//
//  CurrencyTextField.swift
//  SwiftAutolyout
//
//  Created by nitish on 16/05/19.
//  Copyright © 2019 nitish. All rights reserved.
//

import UIKit
@IBDesignable
class CurrencyTextField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        customiseView()
        
    }

    override func awakeFromNib() {
        super.awakeFromNib()
         customiseView()
       
    }
    
    func  customiseView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        if placeholder == nil {
            placeholder = " "
        }
        if let  p = placeholder{
            let place = NSAttributedString(string: p, attributes: [.foregroundColor:UIColor.white])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    }

}
