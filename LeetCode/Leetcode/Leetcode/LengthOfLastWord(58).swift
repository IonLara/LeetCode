//
//  LengthOfLastWord(58).swift
//  Leetcode
//
//  Created by Ion Sebastian Rodriguez Lara on 15/11/23.
//

import Foundation

class LengthLastWord {
    func lengthOfLastWord(_ s: String) -> Int {
        var length = 0

        for char in s.reversed() {
            if char != " " {
                length += 1
            } else if length > 0 {
                return length
            }
        }
        return length
    }
}
