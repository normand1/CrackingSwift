//
//  MathematicsAndProbability.swift
//  SwiftTechnicalQuestions
//
//  Created by davinorm on 3/4/15.
//  Copyright (c) 2015 David Norman. All rights reserved.
//

import Foundation


public class MathAndProb {
    
   static func primeNative(n : Int) ->Bool {
        if n < 2 {
            return false
        }
        
        for x in 2..<n {
            if n % x == 0 {
                return false
            }
        }
        
        return true
        
    }
    
    
}