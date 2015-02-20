//
//  StacksAndQueues.swift
//  SwiftTechnicalQuestions
//
//  Created by davinorm on 2/19/15.
//  Copyright (c) 2015 David Norman. All rights reserved.
//

import Foundation

/**
*  A stack implementation, Last in first Out (LIFO)
*/
class Stack {
    
    var top : Node?
    
    init(topNode : Node) {
        self.top = topNode
    }
    
    func pop()->Node? {
        if (top != nil) {
            var nodeToReturn = top
            top = top?.next
            return nodeToReturn
        }
        
        return nil
    }
    
    func push(aNode : Node) {
        aNode.next = top
        top = aNode
    }
    
    func printWholeStack() {
        var thisNode = top
        
        while thisNode?.next != nil {
            println(thisNode!.data)
            thisNode = thisNode!.next
        }
            println(thisNode!.data)
        
    }
    
    func peek()->Node?
    {
        return top!
    }
    
}

/**
*  A Queue implemetation, First in First Out (FIFO)
*/
class Queue {
    
    var first : Node?
    var last : Node?
    
    init() {
        println("new queue created")
    }
    
    func enqueue(data : Int) {
        
        var thisNode = first
        
        if first == nil {
            first = Node(data: data)
            last = Node(data: data)
        } else {
            while thisNode!.next != nil {
                thisNode = thisNode!.next
            }
            
            thisNode!.next = Node(data: data)
            last = thisNode!.next
        }
    }
    
    func dequeue() {
        
    }
    
    func printAll() {
        var thisNode = first
        
        while thisNode!.next != nil {
            println(thisNode!.data)
            thisNode = thisNode!.next
        }
            println(thisNode!.data)
    }
    
    
}

