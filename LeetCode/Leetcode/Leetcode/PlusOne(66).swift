//
//  PlusOne(66).swift
//  Leetcode
//
//  Created by Ion Sebastian Rodriguez Lara on 10/11/23.
//

import Foundation
class PlusOne {
    func plusOne(_ digits: [Int]) -> [Int] {
        var result = digits
        for i in 1...result.count {
            if result[result.count - i] < 9 {
                result[result.count - i] += 1
                return result
            } else {
                result[result.count - i] = 0
                if i == result.count {
                    result.insert(1, at: 0)
                }
            }
        }
        return result
    }
}
