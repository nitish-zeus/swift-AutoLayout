//
//  wage.swift
//  SwiftAutolyout
//
//  Created by nitish on 16/05/19.
//  Copyright © 2019 nitish. All rights reserved.
//

import Foundation

class Wage {
    
    class func getHours (forWage wage : Double, andPrice price:Double) ->  Int {
        return Int(ceil(price/wage))
    }
    
}
