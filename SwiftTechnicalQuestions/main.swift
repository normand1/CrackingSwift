//
//  main.swift
//  SwiftTechnicalQuestions
//
//  Created by davinorm on 2/17/15.
//  Copyright (c) 2015 David Norman. All rights reserved.
//

import Foundation

//    func insertionSort(inout numberList: [Int]) {
//    var x, y, key : Int
//    
//    for (x = 0; x < numberList.count; x++) {
//        //obtain a key to be evaluated
//        key = numberList[x]
//        //iterate backwards through the sorted portion
//        for (y = x; y > -1; y--) {
//            if (key < numberList[y]) {
//                //remove item from original position
//                numberList.removeAtIndex(y + 1)
////                println("1:\(data)\n")
//                //insert the number at the key position
//                numberList.insert(key, atIndex: y)
////                println("2:\(data)\n")
//            }
//        }
//        //end for
//    } //end for
//} //end function
//
//func fizzBuzz() {
//    for x in 1...100 {
//        if x % 3 == 0 && x % 5 == 0 {
//            println("fizzBuzz")
//        }
//        else if x % 3 == 0 {
//            println("fizz")
//        }
//        else if x % 5 == 0 {
//            println("buzz")
//        }
//        else {
//            println(x)
//        }
//        
//        
//        
//        
//    }
//}

var m = 19
var n = 1024

BitManipulation.insertBits(&m, intoN: &n, from: 2, to: 6)


//fizzBuzz()

//var stringTest = "asdfdsafdsa"
//var length = Array(stringTest)
//println(stringTest.utf16Count)

//var trie = SortingAlgorithms.Trie()
//trie.addWord("test")
//trie.addWord("tests")
//trie.addWord("testing")
//trie.addWord("testable")
//trie.addWord("testers")
//trie.addWord("all")
//trie.addWord("allow")
//trie.addWord("allows")
//trie.addWord("allowable")
//
//
//var result = trie.findWord("test")
//println("result: \(result)")

//SortingAlgorithms.myQuickSort(&data)
//insertionSort(&data)

//SortingAlgorithms.printFibonacciSeqUpTo(n: 20)

//println("is a prime number: \(MathAndProb.primeNative(2))" )



//println(data)