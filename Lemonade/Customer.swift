//
//  Customer.swift
//  Lemonade
//
//  Created by Nicholai de Guzman on 1/9/15.
//  Copyright (c) 2015 Nic. All rights reserved.
//

import Foundation

class Customer {
    
    var preference:String = CustomerBrain.getPreference()
    
    func likesLemonade(mix : String) -> Bool {
        if self.preference == mix {
            return true
        }
        else {
            return false
        }
    }
    
    
    //INNER CLASS
    class CustomerBrain {
        class func getPreference() -> String {
            var myRatio:Double = 0.0
            myRatio = Double(Int(arc4random_uniform(UInt32(10))) + 1) / Double(10)
            
            if myRatio < 0.4 {
                return "ACIDIC"
            }
            else if myRatio < 0.6 {
                return "EQUAL"
            }
            
            else {
                return "DILUTED"
            }
            
        }
    }//end customerBrain
    
}