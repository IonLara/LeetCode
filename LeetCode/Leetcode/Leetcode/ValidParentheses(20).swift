//
//  ValidParentheses(20).swift
//  Leetcode
//
//  Created by Ion Sebastian Rodriguez Lara on 13/11/23.
//

import Foundation

class ValidParentheses {
    
    var openers: [Character] = ["(", "[", "{"]
    var closers: [Character] = [")", "]", "}"]
    
    func isValid(_ s: String) -> Bool {
        if s.count == 0 {
            return true
        }
        if s.count % 2 != 0 {
            return false
        }
        var word = s
        var open = [Character]()
        for chars in s {
            if open.isEmpty {
                open.append(chars)
            } else {
                if closers.contains(chars) {
                    switch open.last! {
                    case "(":
                        if chars == ")" {
                            open.removeLast()
                        } else {
                            return false
                        }
                    case "[":
                        if chars == "]" {
                            open.removeLast()
                        } else {
                            return false
                        }
                    case "{":
                        if chars == "}" {
                            open.removeLast()
                        } else {
                            return false
                        }
                    default:
                        break
                    }
                } else if openers.contains(chars) {
                    open.append(chars)
                } else {
                    return false
                }
            }
        }
        if open.isEmpty {
            return true
        } else {
            return false
        }
    }
}
