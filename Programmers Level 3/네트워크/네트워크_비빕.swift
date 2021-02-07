import Foundation

var graph = [[Int]]()
var visited = [Bool]()

func dfs(_ index: Int) {
    for nextIndex in 0..<graph.count {
        if graph[index][nextIndex] == 1 && !visited[nextIndex] {
            visited[nextIndex] = true
            dfs(nextIndex)
        }
    }
}

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    graph = computers
    visited = [Bool](repeating: false, count: computers.count)
    
    var answer = 0
    
    for index in 0..<computers.count {
        if !visited[index] {
            visited[index] = true
            dfs(index)
            
            answer += 1
        }
    }
    
    return answer
}
