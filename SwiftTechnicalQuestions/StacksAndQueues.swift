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
    
    
    /**
    add a new node to the top of the stack
    
    :param: aNode new node with value
    */
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
    
    /**
    peek at the top value on the stack
    
    :returns: the top node on the stack
    */
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
    
    /**
    add a new node to the end of the queue
    
    :param: data data paramter to add to the new queue
    */
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
    
    
    /**
    first in line Node is returned and the next Node becomes first
    
    :returns: node that is first in line
    */
    func dequeue()->Node {
        var thisNode = first
        
        first = thisNode!.next
        println("dequeued this node: \(thisNode!.data)")
        
        return thisNode!
        
    }
    
    /**
    traverse the entire queue and print out all data values of the nodes
    */
    func printAll() {
        var thisNode = first
        
        while thisNode!.next != nil {
            println(thisNode!.data)
            thisNode = thisNode!.next
        }
            println(thisNode!.data)
    }
    
    
}

