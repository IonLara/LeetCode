//
//  PalindromeNumber(9).swift
//  Leetcode
//
//  Created by Ion Sebastian Rodriguez Lara on 23/10/23.
//

import Foundation

class PalindromeNum {
    func isPalindrome(_ x: Int) -> Bool {
        var asString = String(x)
        var copy = asString
        
        for _ in 0..<asString.count {
            if asString.removeFirst() != copy.removeLast() {
                return false
            }
        }
        return true
    }
}
