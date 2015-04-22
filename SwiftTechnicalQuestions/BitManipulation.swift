//
//  BitManipulation.swift
//  SwiftTechnicalQuestions
//
//  Created by davinorm on 3/4/15.
//  Copyright (c) 2015 David Norman. All rights reserved.
//

import Foundation


public class BitManipulation {
    
    class func insertBits(inout m : Int, inout intoN: Int, from :Int, to : Int ) {
        //TODO: Not working correctly
        
        var allOnes = ~0
        //1s before position to, then 0s. left = 11100000
        var left = allOnes << (to + 1)
        
        //1s after position from. right = 00000011
        var right = (1 << from)-1
        
        var mask = left | right
        
        var nCleared = intoN & mask //clear bits to through from
        
        var shiftedM = m << from
        intoN = intoN | shiftedM
        println("result: \(intoN)")
    }
    
}

class Vehicle {
    var seats = 2
    var noise = "honk"
    var maxSpeed = 0
    
    func description() {
        
        println("this vehicle has \(seats) seats and goes \(noise)!!!")
        
    }
    
}

class Bicylcle : Vehicle {
    var numberOfWheels = 2
    override var noise : String {
        get {
            return "ring ring"
        } set {
            self.noise = newValue
        }
    }
    
     override func description() {
        println("I'm a bike, \(noise)!")
    }
    
}

extension String {
    func countOfChars()->Int{
       return count(self)
    }
}
