// CH2 Linked Lists

import UIKit


/**
*  A Simple Singly Linked List Implementation
*/
class Node {
    var next : Node?
    var data = 0
    
    /**
    initializer for the node
    
    :param: data data that the node will store
    
    :returns: initialized Node
    */
    init(data: Int) {
        self.data = data
    }
    
    /**
    Append a new node to the tail of the linked list
    
    :param: data data that the new Node will store
    */
    func appendToTail(data: Int) {
        var tailEndNode = Node(data: data)
        var thisNode = self
        while thisNode.next != nil {
            thisNode = thisNode.next!
        }
        
        thisNode.next = tailEndNode
    }
    
    //TODO: Traverse entire linked list and print out all datums
    
    func printFullList() {
        var thisNode = self
        var index = 0
        while thisNode.next != nil {
            println("Node(\(index)).data is equal to: \(thisNode.data) \n")
            index++
            thisNode = thisNode.next!
        }
    }
    
    
    //TODO: delete node function
    
    //TODO: Remove duplicates from an unsorted linked list
    
}

//TESTING START
//initialize the base Node and append 3 more Nodes to it's tail
var linkedList = Node(data: 11)
linkedList.appendToTail(22)
linkedList.appendToTail(33)
linkedList.appendToTail(44)

//read the data from each Node in the list
//var link1 = linkedList
//link1.data
//var link2 = linkedList.next!
//link2.data
//var link3 = link2.next!
//link3.data
//var link4 = link3.next!
//link4.data

linkedList.printFullList()

//TESTING END









