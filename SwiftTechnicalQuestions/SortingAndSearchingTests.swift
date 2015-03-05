//
//  SortingAndSearchingTests.swift
//  SwiftTechnicalQuestions
//
//  Created by davinorm on 2/21/15.
//  Copyright (c) 2015 David Norman. All rights reserved.
//

import Cocoa
import XCTest

class SortingAndSearchingTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testMergeSorting() {
        
        var data = [22, 51, 77, 59, 18, 40, 87, 47, 41, 98, 23, 41, 9, 56, 90, 57, 90, 1, 86, 13]
        SortingAlgorithms.myMergeSort(unsortedArray: &data)
        XCTAssertEqual(data, [1, 9, 13, 18, 22, 23, 40, 41, 41, 47, 51, 56, 57, 59, 77, 86, 87, 90, 90, 98], "passed")
                
//        println("after mergeSort: \(data)")

    }
    
    func testFibonacci(){
        
        var result = SortingAlgorithms.printFibonacciSeqUpTo(n: 20)
        
        XCTAssertEqual(result, [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711], "Arrays are equal")
        
        
    }
    
    

}
