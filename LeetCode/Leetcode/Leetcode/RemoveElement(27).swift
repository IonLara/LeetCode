//
//  RemoveElement(27).swift
//  Leetcode
//
//  Created by Ion Sebastian Rodriguez Lara on 15/11/23.
//

import Foundation

class RemoveElement {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var i = 0
        
        while i < nums.count {
            if nums[i] == val {
                nums.remove(at: i)
            } else {
                i += 1
            }
        }
        return nums.count
    }
}
