//
//  AddToArray(989).swift
//  Leetcode
//
//  Created by Ion Sebastian Rodriguez Lara on 22/12/23.
//

import Foundation

class addToArray {
    func addToArrayForm(_ num: [Int], _ k: Int) -> [Int] {
        var mainNum = 0
        var i = 1
        var result = [Int]()
        for int in num.reversed() {
            mainNum += (int * i)
            i *= 10
        }
        mainNum += k
        while mainNum > 0 {
            result.insert(mainNum % 10, at: 0)
            mainNum /= 10
        }
        return result
    }
}
