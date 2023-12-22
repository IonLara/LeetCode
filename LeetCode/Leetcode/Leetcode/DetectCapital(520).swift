//
//  DetectCapital(520).swift
//  Leetcode
//
//  Created by Ion Sebastian Rodriguez Lara on 22/12/23.
//

import Foundation

class DetectCapital {
    func detectCapitalUse(_ word: String) -> Bool {
        var start = false
        var capCount = 0
        var i = 0
        for char in word {
            if i == 0 && char.isUppercase {
                capCount += 1
                i += 1
                start = true
                continue
            }
            if char.isUppercase {
                capCount += 1
            }
            i += 1
        }
        if capCount == 0 || capCount == word.count {
            return true
        } else if start && capCount == 1{
            return true
        } else {
            return false
        }
    }
}
