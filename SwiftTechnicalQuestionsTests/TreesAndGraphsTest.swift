//
//  TreesAndGraphsTest.swift
//  SwiftTechnicalQuestions
//
//  Created by davinorm on 2/21/15.
//  Copyright (c) 2015 David Norman. All rights reserved.
//

import Cocoa
import XCTest

class TreesAndGraphsTest: XCTestCase {
    
    var rootNode : BSTNode?

    override func setUp() {
        super.setUp()
        self.rootNode = BSTNode(data: 10)
        self.rootNode!.left = BSTNode(data: 5)
        self.rootNode!.right = BSTNode(data: 12)
        self.rootNode!.left?.left = BSTNode(data: 1)
        self.rootNode!.left?.right = BSTNode(data: 6)
        self.rootNode!.right?.right = BSTNode(data: 13)
        self.rootNode!.right?.right?.left = BSTNode(data: 12)
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }


    func testBinaryTreeStructure() {
        var binaryTree = BinarySearchTree()
        binaryTree.addNode(10)
        binaryTree.addNode(5)
        binaryTree.addNode(12)
        binaryTree.addNode(1)
        binaryTree.addNode(6)
        binaryTree.addNode(13)
        binaryTree.addNode(12)
        
        println("binary search tree start!!!!!!!!!")
        BinarySearchTree.printInOrderTraversal(binaryTree)
    }
    
    /**
    A Binary tree construction following Stanford's CS110 Course Method
    http://cslibrary.stanford.edu/110/BinaryTrees.html
    */
    func testBinaryTreeStanfordStructure() {
        
        var resultsArray = Array<Int>()
        
      resultsArray =  BSTNode.traverseTreeInOrderStartingAtRoot(rootNode, array: resultsArray)
        println("resultArray: \(resultsArray)")
        XCTAssertEqual(resultsArray, Array<Int>(arrayLiteral: 1,5,6,10,12,12,13), "passed")
        
    }
    
    func testBinaryTreeLookup() {
        
        XCTAssertTrue(BSTNode.lookup(self.rootNode!, value: 5), "passed!")
        XCTAssertFalse(BSTNode.lookup(self.rootNode!, value: 7), "passed!")
    
    }

}
