//
//  ValidAnagram(242).swift
//  Leetcode
//
//  Created by Ion Sebastian Rodriguez Lara on 21/11/23.
//

import Foundation

class ValidAnagram {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }
        var count = Dictionary<Character, Int>()
        for char in s {
            count[char, default: 0] += 1
        }
        for char in t {
            count[char, default: 0] -= 1
        }
        return count.values.allSatisfy { $0 == 0 }
    }
}
