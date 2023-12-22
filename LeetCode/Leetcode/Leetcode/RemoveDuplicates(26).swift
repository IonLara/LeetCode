//
//  RemoveDuplicates(26).swift
//  Leetcode
//
//  Created by Ion Sebastian Rodriguez Lara on 13/11/23.
//

import Foundation

class RemoveDuplicates {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count <= 1 {
            return nums.count
        }
        var i = 1
        var count = 1
        var last = nums[0]
        while count < nums.count {
            if nums[i] == last {
                var temp = nums.remove(at: i)
                nums.append(temp)
            } else {
                last = nums[i]
                i += 1
            }
            count += 1
        }
        return i
    }
}
