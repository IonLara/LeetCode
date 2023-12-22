//
//  ReverseString(344).swift
//  Leetcode
//
//  Created by Ion Sebastian Rodriguez Lara on 10/12/23.
//

import Foundation

class ReverseString {
    func reverseString(_ s: inout [Character]) {
        for i in 1...(s.count/2) {
            
            var temp = s[i - 1]
            s[i - 1] = s[s.count - i]
            s[s.count - i] = temp
        }
    }
}
