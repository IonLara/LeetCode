//
//  TwoSum(1).swift
//  Leetcode
//
//  Created by Ion Sebastian Rodriguez Lara on 21/10/23.
//

import Foundation
class TwoSum {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count {
            for j in (i+1)..<nums.count {
                if (nums[i] + nums[j]) == target {
                    return [i,j]
                }
            }
        }
        return[]
    }
}
