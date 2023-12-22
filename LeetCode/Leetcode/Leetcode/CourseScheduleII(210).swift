//
//  CourseScheduleII(210).swift
//  Leetcode
//
//  Created by Ion Sebastian Rodriguez Lara on 21/11/23.
//

import Foundation
class CourseSchedII {
    func findOrder(_ numCourses: Int, _ prerequisites: [[Int]]) -> [Int] {
        if !canFinish(numCourses, prerequisites) {
            return []
        }
        var graph = [[Int]](repeating: [], count: numCourses)
        var visited = [Bool](repeating: false, count: numCourses)
        var result = [Int]()
        for i in prerequisites {
            graph[i[0]].append(i[1])
        }
        
        func dfs(_ node: Int) {
            visited[node] = true
            for neighbor in graph[node] {
                if !visited[neighbor] {
                    dfs(neighbor)
                }
            }
            result.append(node)
        }
        for node in 0..<graph.count {
            if !visited[node] {
                dfs(node)
            }
        }
        return result
    }
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
