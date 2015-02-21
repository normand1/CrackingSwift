//
//  ArraysAndStringsTest.swift
//  SwiftTechnicalQuestions
//
//  Created by davinorm on 2/20/15.
//  Copyright (c) 2015 David Norman. All rights reserved.
//

import Cocoa
import XCTest

class ArraysAndStringsTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    // 1.1 tests
    
    func testStringIsUnique(){
        var str = "abcdfghjkl"
        var result = ArraysAndStrings.charsAreUnique(str)
        XCTAssertTrue(result, str)
    }
    
    func testStringNotUnique(){
        var str = "abcdfgghjkl"
        var result = ArraysAndStrings.charsAreUnique(str)
        XCTAssertFalse(result, str)
    }
    
    //1.2 tests
    func testReverseString() {
        var str = "hello world"
        var result = ArraysAndStrings.reverseString(str)
        XCTAssertEqual(result, "dlrow olleh", "correctly reversed: \(result)")
        
    }
    
    func testIsAPermutation() {
        var string1 = "test string 1"
        var string2 = "test string 1"
        
        var result = ArraysAndStrings.stringIsAPermutation(string1, string2: string2)
        XCTAssertTrue(result, "passed")
    }
    
    func testIsNotAPermutation() {
        var string1 = "test string 1"
        var string2 = "test string 2"
        
        var result = ArraysAndStrings.stringIsAPermutation(string1, string2: string2)
        XCTAssertFalse(result, "passed")
    }
    
    
    

}
