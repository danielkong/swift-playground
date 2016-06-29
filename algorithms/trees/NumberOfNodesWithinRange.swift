//
//  NumberOfNodesWithinRange.swift
//  Test
//
//  Created by Mari Batilando on 6/28/16.
//  Copyright © 2016 Mari Batilando. All rights reserved.
//

import Foundation

extension BinarySearchTreeNode {
    
    func calculateNumberOfNodes(betweenMin min: Int, andMax max: Int) -> Int {
        return self.calculateNumberOfNodesHelper(node: self, min: min, max: max)
    }
    
    private func calculateNumberOfNodesHelper(node: BinarySearchTreeNode, min: Int, max: Int) -> Int {
        let nodeValue = node.value as! Int
        
        var leftSubtreeCount = 0
        if let left = node.left where nodeValue > min {
            leftSubtreeCount = self.calculateNumberOfNodesHelper(node: left, min: min, max: max)
        }
        
        var rightSubtreeCount = 0
        if let right = node.right where nodeValue < max {
            rightSubtreeCount = self.calculateNumberOfNodesHelper(node: right, min: min, max: max)
        }
        
        var total = leftSubtreeCount + rightSubtreeCount
        if nodeValue >= min && nodeValue <= max {
            total += 1
        }
        
        return total
    }
    
}
