//
//  ViewController.swift
//  SwiftAutolyout
//
//  Created by nitish on 16/05/19.
//  Copyright © 2019 nitish. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var resultLb: UILabel!
    @IBOutlet weak var itemTF: CurrencyTextField!
    @IBOutlet weak var hoursLb: UILabel!
    @IBOutlet weak var clrBtn: UIButton!
    @IBOutlet weak var curreuncyTF: CurrencyTextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame:CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 0.9041043134)
        calcBtn.setTitle("Calculate", for: .normal
        )
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        itemTF.inputAccessoryView = calcBtn
        curreuncyTF.inputAccessoryView = calcBtn
        
        resultLb.isHidden = true
        hoursLb.isHidden = true
        clrBtn.isHidden = true
        
        
    }
    
    @objc func calculate(){
        if let curreuncyTF = curreuncyTF.text ,let itemTF = itemTF.text{
            if let wage = Double(curreuncyTF), let price = Double(itemTF){
                view.endEditing(true)
                resultLb.isHidden = false
                hoursLb.isHidden = false
                clrBtn.isHidden = false
                resultLb.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
        
      
        
    }
    
    @IBAction func clearCalTapped(_ sender: Any) {
        resultLb.isHidden = true
        hoursLb.isHidden = true
        itemTF.text = ""
        curreuncyTF.text = ""
         clrBtn.isHidden = true
        
        
        
    }
   
    
}

