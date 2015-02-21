//
//  main.swift
//  SwiftTechnicalQuestions
//
//  Created by davinorm on 2/17/15.
//  Copyright (c) 2015 David Norman. All rights reserved.
//

import Foundation

//TESTING start of Stacks and Queues

var aStack = Stack(topNode: Node(data: 10))
aStack.push(Node(data: 11))
aStack.push(Node(data: 12))
aStack.push(Node(data: 13))
aStack.push(Node(data: 14))

aStack.printWholeStack()

println("\nThis Item popped: \(aStack.pop()!.data)\n")

aStack.printWholeStack()

var aQueue = Queue()
aQueue.enqueue(10)
aQueue.enqueue(11)
aQueue.enqueue(12)
aQueue.enqueue(13)
aQueue.enqueue(14)

aQueue.printAll()

aQueue.dequeue()

aQueue.printAll()

//TESTING end of Stacks and Queues


