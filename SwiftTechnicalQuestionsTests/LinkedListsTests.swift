//
//  LinkedListsTests.swift
//  SwiftTechnicalQuestions
//
//  Created by davinorm on 2/20/15.
//  Copyright (c) 2015 David Norman. All rights reserved.
//

import Cocoa
import XCTest

class LinkedListsTests: XCTestCase {
    var aLinkedList : LinkedList!

    override func setUp() {
        super.setUp()
        aLinkedList = LinkedList(head: Node(data: 11))
        aLinkedList.appendToTail(19)
        aLinkedList.appendToTail(9999)
        aLinkedList.appendToTail(17)
        aLinkedList.appendToTail(17)
        aLinkedList.appendToTail(200)
        aLinkedList.appendToTail(1000)
        aLinkedList.appendToTail(20)
        aLinkedList.appendToTail(19)

        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    //2.1
    
    func testRemoveDuplicatesFromUnsortedList() {
        //initialize the base Node and append more Nodes to it's tail
        
        //aLinkedList.printFullList()
        
        aLinkedList.removeNodesWithDuplicateDataValues()
        
        //println("VALUE at index 1: \(aLinkedList.valueAtIndex(1))")
        //println("VALUE at index 3: \(aLinkedList.valueAtIndex(3))")
        
        aLinkedList.printFullList()
        
        XCTAssertEqual(aLinkedList.valueAtIndex(1), 9999, "passed")
        XCTAssertEqual(aLinkedList.valueAtIndex(3), 200, "passed")

    }
    
    //2.2
    
    func testKthToTheLastValue() {
    
        var value = aLinkedList.findTheKthToTheLastDataPoint(2)
        XCTAssertEqual(value, 1000, "passed")
        
    }
    
    //2.3
    
    func testDeleteMiddleNode() {
        
       // println("/// before delete middle")
        
       // aLinkedList.printFullList()
        
        aLinkedList.deleteMiddleNode(4)
        
       // println("/// after delete middle")
        
        XCTAssertEqual(aLinkedList.valueAtIndex(6), 20, "passed")

        
       // aLinkedList.printFullList()

        
    }
    

}
