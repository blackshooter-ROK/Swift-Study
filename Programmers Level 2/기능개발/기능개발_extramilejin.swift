// 2021.01.26 extramilejin

import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var answer = [Int]()
    var newProgresses = progresses
    var cnt = progresses.count
    var alreadyDeployed = Array(repeating: false , count: cnt)
    
    while cnt > 0 {
        var deployCount = 0
        for index in 0..<progresses.count {
            if alreadyDeployed[index] {continue}
            newProgresses[index] += speeds[index]
            if newProgresses[index] >= 100 && (index == 0 || alreadyDeployed[index - 1]) {
                deployCount += 1
                alreadyDeployed[index] = true
                cnt -= 1
            }
        }
        if deployCount > 0 {answer.append(deployCount)}
    }
    return answer
}
