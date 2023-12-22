//
//  TwoCityScheduling(1029).swift
//  Leetcode
//
//  Created by Ion Sebastian Rodriguez Lara on 21/12/23.
//

import Foundation
class TwoCitySched {
    func twoCitySchedCost(_ costs: [[Int]]) -> Int {
       let n = costs.count / 2
        var costDifferences: [(Int, Int)] = []
        
        for (index, cost) in costs.enumerated() {
            let diff = cost[0] - cost[1]
            costDifferences.append((diff, index))
        }
        
        costDifferences.sort { $0.0 < $1.0 }
        
        var totalCost = 0
        for i in 0..<n {
            totalCost += costs[costDifferences[i].1][0] // Send first n people to city A
            totalCost += costs[costDifferences[i + n].1][1] // Send remaining n people to city B
        }
        
        return totalCost
    }
}
