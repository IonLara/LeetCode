//
//  GoatLatin(824).swift
//  Leetcode
//
//  Created by Ion Sebastian Rodriguez Lara on 22/12/23.
//

import Foundation

class GoatLatin {
    let vowels = ["a", "e", "i", "o", "u"]
    func toGoatLatin(_ sentence: String) -> String {
        var words = sentence.components(separatedBy: " ")
        var result = ""
        var index = 1
        for word in words {
            if index > 1 {
                result.append(" ")
            }
            if !vowels.contains(word.prefix(1).lowercased()) {
                var temp = word
                var first = temp.removeFirst()
                temp.append(String(first))
                result.append("\(temp)ma")
            } else {
                result.append("\(word)ma")
            }
            for _ in 0..<index {
                result.append("a")
            }
            index += 1
        }
        return result
    }
}
