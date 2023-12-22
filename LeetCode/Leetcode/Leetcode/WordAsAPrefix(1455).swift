//
//  WordAsAPrefix(1455).swift
//  Leetcode
//
//  Created by Ion Sebastian Rodriguez Lara on 22/12/23.
//

import Foundation

class IsPrefix {
    func isPrefixOfWord(_ sentence: String, _ searchWord: String) -> Int {
        var words = sentence.components(separatedBy: " ")
        for i in 0..<words.count {
            if searchWord.count <= words[i].count && searchWord == words[i].prefix(searchWord.count) {
                return i + 1
            }
        }
        return -1
    }
}
