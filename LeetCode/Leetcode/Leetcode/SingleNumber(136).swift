//
//  SingleNumber(136).swift
//  Leetcode
//
//  Created by Ion Sebastian Rodriguez Lara on 10/11/23.
//

import Foundation

class SingleNum {
    func singleNumber(_ nums: [Int]) -> Int {
        var result = 0
        nums.map { result ^= $0 }
        return result
    }
}
