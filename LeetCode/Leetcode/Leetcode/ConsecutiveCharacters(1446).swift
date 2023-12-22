//
//  ConsecutiveCharacters(1446).swift
//  Leetcode
//
//  Created by Ion Sebastian Rodriguez Lara on 22/12/23.
//

import Foundation

class ConsecutiveChar {
    func maxPower(_ s: String) -> Int {
        var spree = 1
        var maxSpree = 1
        var word = s
        var lastChar = word.removeFirst()
        while word.count > 0 {
            var temp = word.removeFirst()
            if temp == lastChar {
                spree += 1
                maxSpree = max(maxSpree, spree)
            } else {
                spree = 1
                lastChar = temp
            }
        }
        return maxSpree
    }
}
