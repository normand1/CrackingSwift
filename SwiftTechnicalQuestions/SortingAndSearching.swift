//
//  SortingAndSearching.swift
//  SwiftTechnicalQuestions
//
//  Created by davinorm on 2/21/15.
//  Copyright (c) 2015 David Norman. All rights reserved.
//

import Foundation


class SortingAlgorithms {
    
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
}





