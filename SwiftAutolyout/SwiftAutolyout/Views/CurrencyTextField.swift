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
    override func draw(_ rect: CGRect) {
        
        let size:CGFloat = 20
        let currencyLb = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2) - size/2, width: size, height: size))
        currencyLb.backgroundColor = #colorLiteral(red: 0.7797960639, green: 0.7799281478, blue: 0.7797787189, alpha: 1)
        currencyLb.textAlignment = .center
        currencyLb.textColor = #colorLiteral(red: 0.4999483824, green: 0.50003618, blue: 0.4999368191, alpha: 1)
        currencyLb.layer.cornerRadius = 5.0
        currencyLb.clipsToBounds = true
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .currency
        numberFormatter.locale = .current
        currencyLb.text = numberFormatter.currencySymbol
        addSubview(currencyLb)
        
        
    }

    override func awakeFromNib() {
        super.awakeFromNib()
         customiseView()
       
    }
    
    func  customiseView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
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
