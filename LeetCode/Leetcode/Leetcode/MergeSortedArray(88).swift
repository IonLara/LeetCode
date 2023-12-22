//
//  MergeSortedArray(88).swift
//  Leetcode
//
//  Created by Ion Sebastian Rodriguez Lara on 10/11/23.
//

import Foundation
class MergeSorted {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        if m == 0 {
            nums1 = nums2
            return
        }
        var temp = 0
        for int in nums2 {
            for i in 0..<nums1.count {
                if int >= nums1[i] {
                    if nums1.count > i + 1 && nums1[i + 1] > int || i + 1 - temp >= m {
                        nums1.insert(int, at: i + 1)
                        nums1.removeLast()
                        temp += 1
                        break
                    }
                } else {
                    nums1.insert(int, at: i)
                    nums1.removeLast()
                    temp += 1
                    break
                }
            }
        }
    }
}
