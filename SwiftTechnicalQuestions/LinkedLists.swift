//
//  LinkedLists.swift
//  SwiftTechnicalQuestions
//
//  Created by davinorm on 2/19/15.
//  Copyright (c) 2015 David Norman. All rights reserved.
//

import Foundation


// CH2 Linked Lists

/**
*  A Simple Singly Linked List Implementation
*/



    class Node {
        var next : Node?
        var data : Int!
        
        /**
        initializer for the node
        
        :param: data data that the node will store
        
        :returns: initialized Node
        */
        
        init(data: Int) {
            self.data = data
        }
        
    }

class LinkedList {
    
    var head : Node!
    
    init(head: Node!) {
    self.head = head!
    }
    
    /**
    Append a new node to the tail of the linked list
    
    :param: data data that the new Node will store
    */
    func appendToTail(data: Int) {
        var tailEndNode = Node(data: data)
        var thisNode = head
        while thisNode.next != nil {
            thisNode = thisNode.next!
        }
        
        thisNode.next = tailEndNode
    }
    
    
    /**
    Traverse the linked list and print the data value of each node
    */
    func printFullList() {
        var thisNode = head
        var index = 0
        while thisNode.next != nil {
            // print 1..<Number of Nodes
            println("Node(\(index)).data is equal to: \(thisNode.data) \n")
            index++
            thisNode = thisNode.next!
        }
        //print the last node that isn't printed in the loop -- the final node
        println("Node(\(index)).data is equal to: \(thisNode.data) \n")
    }
    
    /**
    traverse the list and delete values at the index
    
    :param: index index at which to delete a node
    */
    func deleteNodeAtIndex(index: Int) {
        var indexLoop = 0
        var thisNode = head
        var lastNode : Node!
        
        if index == 0 {
            head = thisNode.next!
            return
        } else {
            while indexLoop < index {
                lastNode = thisNode
                thisNode = thisNode.next!
                indexLoop++
            }
        }
        // the node at the indicated Index is thisNode
        
        if thisNode.next != nil {
            var aNode = thisNode.next!
            lastNode.next = thisNode.next!
        }
        else {
            lastNode.next = thisNode
        }
        
    }
    
    /**
    get the data value at an index on the list
    
    :param: index index of which you would like to return the data value
    
    :returns: the data value in Int form
    */
    func valueAtIndex(index: Int)->Int {
        var indexLoop = 0
        var thisNode = head
        var lastNode : Node!
        
        if index == 0 {
            return thisNode.data
        } else {
            while indexLoop < index {
                lastNode = thisNode
                thisNode = thisNode.next!
                indexLoop++
            }
        }
        // the node at the indicated Index is thisNode
        
        return thisNode.data
        
    }
    
    /**
    // 2.1 Remove duplicates from an unsorted linked list
    */
    func removeNodesWithDuplicateDataValues() {
        
        var index = 0
        var thisNode = head
        var dataPointsArray = Array<Int>()
        while thisNode.next != nil {
            dataPointsArray.append(thisNode.data)
            thisNode = thisNode.next!
            
        }
        //last node append data
        dataPointsArray.append(thisNode.data)
        var uniqueItemsArray = Array<Int>()
        println("DataPointsArray: \(dataPointsArray) \n")
        for item in dataPointsArray {
            var indexOfItem = find(uniqueItemsArray, item)
            if indexOfItem == nil {
                uniqueItemsArray.append(item)
            }
            else {
                deleteNodeAtIndex(indexOfItem!)
            }
        }
    }
    
    
    /**
    2.2 Find the 'Kth' to the last element of a singly linked list
    
    :param: k the 'Kth' element
    */
    func findTheKthToTheLastDataPoint(k: Int) ->Int {
        
        var thisNode = head
        var dataPointsArray = Array<Int>()
        
        while (thisNode.next != nil) {
            dataPointsArray.append(thisNode.data)
            thisNode = thisNode.next
        }
        
        //add the last data point
        dataPointsArray.append(thisNode.data)
        
        return dataPointsArray[dataPointsArray.count - (k + 1)]
    }
    
    //get node at index
    func getNodeAtIndex(index: Int)->Node {
        var thisNode = head
        var loopIndex = 0
        
        while thisNode.next != nil {
            
            if (loopIndex == index) {
                return thisNode
            }
            
            thisNode = thisNode.next!
            loopIndex++
        }
        
        return thisNode
        
    }
    
    /**
    2.3 delete middle node without access to the head
    
    :param: middleIndex the middle index of the linkedList you'd like to delete the middle node from
    */
    func deleteMiddleNode(middleIndex: Int) {
       var middleNode = getNodeAtIndex(middleIndex)
        var dataPointsArray = Array<Int>()
        
        //get all of the datapoints going forward
        while (middleNode.next != nil) {
            middleNode = middleNode.next!
            dataPointsArray.append(middleNode.data)
            
        }
        
        middleNode = getNodeAtIndex(middleIndex)
        var lastNode : Node?
        var loopIndex = 0
        
        while (middleNode.next != nil) {
            lastNode = middleNode
            middleNode.data = dataPointsArray[loopIndex]
            middleNode = middleNode.next!
            loopIndex++
        }
        
        lastNode?.next = nil
        
    }
    
    

    
}
