//
//  CountWordsWithPrefix.swift
//  Leetcode
//
//  Created by Ion Sebastian Rodriguez Lara on 22/12/23.
//

import Foundation

class CountWithPrefix {
    func prefixCount(_ words: [String], _ pref: String) -> Int {
        var count = 0
        for i in 0..<words.count {
            if pref.count <= words[i].count && pref == words[i].prefix(pref.count) {
                count += 1
            }
        }
        return count
    }
}
