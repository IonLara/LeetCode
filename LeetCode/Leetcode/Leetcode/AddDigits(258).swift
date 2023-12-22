//
//  AddDigits(258).swift
//  Leetcode
//
//  Created by Ion Sebastian Rodriguez Lara on 10/12/23.
//

import Foundation

class AddDigits {
    func addDigits(_ num: Int) -> Int {
        if num < 10 {
            return num
        }
        var num = num
        var sum = 0

        while num > 0 {
            sum += num%10
            num /= 10
        }
        return addDigits(sum)
    }
}
