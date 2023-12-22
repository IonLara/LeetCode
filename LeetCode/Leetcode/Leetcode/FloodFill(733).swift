//
//  FloodFill(733).swift
//  Leetcode
//
//  Created by Ion Sebastian Rodriguez Lara on 10/12/23.
//

import Foundation
class FloodFill {
    let directions = [(1,0), (-1, 0), (0, 1), (0, -1)]
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ color: Int) -> [[Int]] {
        return helper(image, sr, sc, color, image[sr][sc])
    }

    func helper(_ image: [[Int]], _ sr: Int, _ sc: Int, _ color: Int, _ startColor: Int) -> [[Int]] {
        var newImage = image
        if sr < 0 || sr >= image.count || sc < 0 || sc >= image[0].count || image[sr][sc] == color || image[sr][sc] != startColor {

            return image
        }
        newImage[sr][sc] = color

        for (r, c) in directions {
            newImage = helper(newImage, sr + r, sc + c, color, startColor)
        }

        return newImage
    }
}
