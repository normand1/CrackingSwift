//
//  TreesAndGraphs.swift
//  SwiftTechnicalQuestions
//
//  Created by davinorm on 2/20/15.
//  Copyright (c) 2015 David Norman. All rights reserved.
//

import Foundation

class BSTNode {
    var data: Int?
    var left : BSTNode?
    var right: BSTNode?
    
    init(data: Int?) {
        if let aData = data {
            self.data = aData
        }
    }
    
   static func insert(root: BSTNode?, value: Int)->BSTNode {
        
            
        if root == nil {
            return BSTNode(data: value)
        }
    
        else if value < root!.data {
            root!.left = insert(root?.left, value: value)
        }
        
        else if value > root!.data {
            root!.right = insert(root?.right, value: value)
        }
        
        return root!
        
    }
    
    static func traverseTreeInOrderStartingAtRoot(root: BSTNode?, array: Array<Int>)->Array<Int> {
        var resultArray = array
        
        if root?.left != nil {
           resultArray = traverseTreeInOrderStartingAtRoot(root?.left, array: resultArray)
        }
        
        if root?.data != nil {
            println("this node's value is: \(root!.data)")
            resultArray.append(root!.data!)
        }
        
        if root?.right != nil {
           resultArray = traverseTreeInOrderStartingAtRoot(root?.right, array: resultArray)
        }
        
        return resultArray
    }
    
    static func lookup(node: BSTNode, value: Int)->Bool {
        
        
        if node.data == value {
            return true
        }
        
        else if node.data == nil {
            return false
        }
        
        else if value < node.data {
            if node.left != nil {
                return lookup(node.left!, value: value)
            }
        }
        else if value > node.data {
            if node.right != nil {
                return lookup(node.right!, value: value)
            }
        }
        
        
        return false
    }
    
    static func size(root: BSTNode, sizeVal: Int)->Int {
        
        var sizeVal = sizeVal
    
        if root.left != nil {
            sizeVal = size(root.left!, sizeVal: sizeVal)
        }
        
        if root.right != nil {
            sizeVal = size(root.right!, sizeVal: sizeVal)
        }
        
        return sizeVal + 1
        
    }
    
    static func maxDepth(root: BSTNode?)->Int {
        
        if root == nil {
            return 0
        } else {
                var leftDepth = maxDepth(root!.left)
                var rightDepth = maxDepth(root!.right)
            
            return max(leftDepth, rightDepth) + 1
        }
    }
    
    static func isTreeBalanced(root: BSTNode?)->Bool {
        if root == nil {
            return true
        } else {
            var difference = maxDepth(root?.left) - maxDepth(root?.right)
            if abs(difference) > 1 {
                return false
            } else {
                return isTreeBalanced(root?.left) && isTreeBalanced(root?.right)
            }
        }
        
        
    }
}


class BinarySearchTree {
    
    var data : Int?
    var left : BinarySearchTree?
    var right : BinarySearchTree?
    var visited: Bool!
    
    init() {
        self.visited = false
    }
    
    func addNode(data: Int) {
        
        if self.data == nil {
            self.data = data
        }
        
        else if data < self.data  {

            if self.left?.data != nil {
                self.left!.addNode(data)
            } else {
                var leftNode = BinarySearchTree()
                leftNode.data = data
                self.left = leftNode
            }
        }
        
        else if data > self.data  {
            if self.right != nil {
                self.right!.addNode(data)
            } else {
                var rightNode = BinarySearchTree()
                rightNode.data = data
                self.right = rightNode
            }
        }
    }
    
    static func depthFirstSearch(root: BinarySearchTree?) {
        if root == nil {
            return
        }
        println("print root data\(root!.data)")
        root?.visited = true
        
        
        
    }

    
    static func printPreOrderTraversal(searchTree: BinarySearchTree) {
        
        println("value of node is: \(searchTree.data)")
        
        if searchTree.left != nil {
            printInOrderTraversal(searchTree.left!)
        }
        
        if searchTree.right != nil {
            printInOrderTraversal(searchTree.right!)
        }
    }
    
    static func printInOrderTraversal(searchTree: BinarySearchTree) {
        
        if searchTree.left != nil {
            printInOrderTraversal(searchTree.left!)
        }
        
        println("value of node is: \(searchTree.data)")
        
        
        if searchTree.right != nil {
            printInOrderTraversal(searchTree.right!)
        }
    }
    
    static func printPostOrderTraversal(searchTree: BinarySearchTree) {
        
        if searchTree.left != nil {
            printInOrderTraversal(searchTree.left!)
        }

        if searchTree.right != nil {
            printInOrderTraversal(searchTree.right!)
        }
    
        println("value of node is: \(searchTree.data)")

    }
}