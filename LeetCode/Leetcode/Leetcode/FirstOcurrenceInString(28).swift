//
//  FirstOcurrenceInString(28).swift
//  Leetcode
//
//  Created by Ion Sebastian Rodriguez Lara on 15/11/23.
//

import Foundation

class StringOccurrence {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        var index = 0
        var word = haystack
        if needle.count > haystack.count {
            return -1
        }
        if needle.count == haystack.count {
            if needle == haystack {
                return 0
            } else {
                return -1
            }
        }
        for i in 0...haystack.count - needle.count {
            var temp = word.prefix(needle.count)
            if temp == needle {
                return i
            } else {
                word.removeFirst()
            }
        }
        return -1
    }
}
