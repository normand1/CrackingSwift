//
//  SortingAndSearching.swift
//  SwiftTechnicalQuestions
//
//  Created by davinorm on 2/21/15.
//  Copyright (c) 2015 David Norman. All rights reserved.
//

import Foundation


public class TrieNode {
    
    var key: String!
    var children: Array<TrieNode>
    var isFinal: Bool
    var level: Int
    
    
    init() {
        self.children = Array<TrieNode>()
        self.isFinal = false
        self.level = 0
    }
    
    
}


public class SortingAlgorithms {
    
//MergeSort Solution Found Here: https://jkbdev.wordpress.com/
    
   static func myMergeSort(inout #unsortedArray: [Int]) {
        if unsortedArray.count <= 1 {
            return
        }
        
        //split into sublists
        var leftArray = [Int]()
        var rightArray = [Int]()
        var middle = unsortedArray.count / 2
        
        for x in 0..<middle {
            leftArray.append(unsortedArray[x])
        }
        for y in middle..<unsortedArray.count {
            rightArray.append(unsortedArray[y])
        }
        
        //recursive sublist sorting
        myMergeSort(unsortedArray: &leftArray)
        myMergeSort(unsortedArray: &rightArray)
        //merge sorted lists
        unsortedArray = myMerge(leftArray: &leftArray, rightArray: &rightArray)
        
    }
    
   static func myMerge(inout #leftArray: [Int], inout rightArray: [Int])-> [Int] {
        
        var sortedArray = [Int]()
        
        //sort left and right arrays into one sorted array
        while !leftArray.isEmpty && !rightArray.isEmpty {
            if leftArray[0] <= rightArray[0] {
                sortedArray.append(leftArray[0])
                leftArray.removeAtIndex(0)
            } else {
                sortedArray.append(rightArray[0])
                rightArray.removeAtIndex(0)
            }
        }
        
        //handle any remaining items in an array
        while !leftArray.isEmpty {
            sortedArray.append(leftArray[0])
            leftArray.removeAtIndex(0)
        }
        
        while !rightArray.isEmpty {
            sortedArray.append(rightArray[0])
            rightArray.removeAtIndex(0)
        }
        
        
        return sortedArray
    }
    
   static func quick_sort<T: Comparable>(inout sortingArray: [T]){
        if sortingArray.count > 1{
            var less = [T]()
            var equal = [T]()
            var greater = [T]()
            
            var pivot = sortingArray[1]
            for x in sortingArray{
                if x < pivot{
                    less.append(x)
                }else if x == pivot{
                    equal.append(x)
                }else{
                    greater.append(x)
                }
            }
            quick_sort(&less)
            quick_sort(&greater)
            
            sortingArray = less + equal + greater
        }
    }
    
    static func myQuickSort<T: Comparable>(inout sortingArray: [T]) {
        var less = [T]()
        var equal = [T]()
        var greater = [T]()
        
        
        var pivot = sortingArray[1]
        for x in sortingArray {
            
            if x < pivot {
                less.append(x)
            }
            else if x == pivot {
                equal.append(x)
            }
            else if x > pivot {
                greater.append(x)
            }
        }

        quick_sort(&less)
        quick_sort(&greater)
        
        sortingArray = less + equal + greater
                
    }
    
   static func insertionSort(inout numberList: [Int]) {
        var x, y, key : Int
        
        for (x = 0; x < numberList.count; x++) {
            //obtain a key to be evaluated
            key = numberList[x]
            //iterate backwards through the sorted portion
            for (y = x; y > -1; y--) {
                if (key < numberList[y]) {
                //remove item from original position 
                numberList.removeAtIndex(y + 1)
                //insert the number at the key position 
                numberList.insert(key, atIndex: y)
                }
            }
            //end for 
        } //end for
    } //end function
    
    static func printFibonacciSeqUpTo(#n: Int)->Array<Int> {
        
        var resultArray = [1,1]
        
        for i in 0..<n {
            
            resultArray.append(resultArray[i] + resultArray[i + 1])
            
        }
        
        println("Fibonacci sequence to: \(resultArray)");
        
        return resultArray

    }
    
    //Tries
    
    class Trie {
        
        private var root: TrieNode!
        
        
        init(){
            root = TrieNode()
        }
        
        
        //finds all words based on the prefix
        func findWord(keyword: String) -> Array<String>! {
            
            
            if (count(keyword) == 0){
                return nil;
            }
            
            
            var current: TrieNode = root
            var searchKey: String!
            var wordList: Array<String>! = Array<String>()
            
            
            while(count(keyword) != current.level) {
                
                var childToUse: TrieNode!
                var searchKey = keyword.substringToIndex(advance(keyword.startIndex, current.level + 1))
//                var searchKey: String = keyword.substringToIndex(current.level + 1)
                
                println("looking for prefix: \(searchKey)..")
                
                //iterate through any children
                for child in current.children {
                    
                    if (child.key == searchKey) {
                        childToUse = child
                        current = childToUse
                        break
                    }
                    
                }
                
                
                if (childToUse == nil) {
                    return nil
                }
                
                
            } //end while
            
            
            
            //retrieve the keyword and any decendants
            if ((current.key == keyword) && (current.isFinal)) {
                wordList.append(current.key)
            }
            
            
            //include only children that are words
            for child in current.children {
                
                if (child.isFinal == true) {
                    wordList.append(child.key)
                }
                
            }
            
            
            return wordList
            
            
            
        } //end function
        
        
        
        
        
        //builds a recursive tree of dictionary content
        func addWord(keyword: String) {
            
            
            if (count(keyword) == 0){
                return;
            }
            
            
            var current: TrieNode = root
            var searchKey: String!
            
            
            while(count(keyword) != current.level) {
                
                var childToUse: TrieNode!
                var searchKey: String = keyword.substringToIndex(advance(keyword.startIndex, current.level + 1))
                
                //println("current has \(current.children.count) children..")
                
                
                //iterate through the node children
                for child in current.children {
                    
                    if (child.key == searchKey) {
                        childToUse = child
                        break
                    }
                    
                }
                
                
                //create a new node
                if  (childToUse == nil) {
                    
                    childToUse = TrieNode()
                    childToUse.key = searchKey
                    childToUse.level = current.level + 1;
                    current.children.append(childToUse)
                }
                
                
                current = childToUse
                
                
            } //end while
            
            
            
            //add final end of word check
            if (count(keyword) == current.level) {
                current.isFinal = true
                println("end of word reached!")
                return;
            }
            
            
            
        } //end function
        
        
    }
    
    

    
    
}






