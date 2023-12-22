//
//  LongestCommonPrefix.swift
//  Leetcode
//
//  Created by Ion Sebastian Rodriguez Lara on 13/11/23.
//

import Foundation

class LongestCommonPre{
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count > 0 {
            var word = strs[0]
            for i in 0..<strs[0].count {
                var char = word.removeFirst()
                for word in strs {
                    if word.count > i {
                        if char != word[word.index(word.startIndex, offsetBy: i)] {
                            return String(strs[0].prefix(i))
                        }
                    } else {
                        return word
                    }
                }
            }
            return strs[0]
        }
        return ""
    }
}
