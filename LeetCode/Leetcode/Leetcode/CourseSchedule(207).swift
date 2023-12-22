//
//  CourseSchedule(207).swift
//  Leetcode
//
//  Created by Ion Sebastian Rodriguez Lara on 21/11/23.
//

import Foundation
class CourseSched {
    func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
        var visited = [Bool](repeating: false, count: numCourses)
        var graph = [[Int]](repeating: [], count: numCourses)
        var temp = [Bool](repeating: false, count: numCourses)

        for i in prerequisites {
            graph[i[0]].append(i[1])
        }

        for node in 0..<numCourses {
            if hasCycle(node, &visited, graph, &temp) {
                return false
            }
        }
        return true
    }

    func hasCycle(_ node: Int, _ visited: inout [Bool], _ graph: [[Int]], _ temp: inout [Bool]) -> Bool {
        if !visited[node] {
            visited[node] = true
            temp[node] = true
            for neighbor in graph[node] {
                if neighbor == -1 {
                    temp[node] = false
                    return false
                }
                if !visited[neighbor] && hasCycle(neighbor, &visited, graph, &temp) {
                    return true
                } else if temp[neighbor] {
                    return true
                }
            }
            
            temp[node] = false
        }
        return false
    }
}
