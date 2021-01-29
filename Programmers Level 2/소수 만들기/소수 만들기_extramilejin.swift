// 2021.01.28 extramilejin

import Foundation

func isPrime (_ num: Int) -> Bool {
    for i in 2..<Int(sqrt(Double(num))) + 1 {
        if num % i == 0 { return false }
    }
    return true
}

func solution(_ nums:[Int]) -> Int {
    var answer = 0
    for i in 0..<nums.count {
        for j in i + 1..<nums.count {
            for k in j + 1..<nums.count {
                let num = nums[i] + nums[j] + nums[k]
                if isPrime(num) {
                    answer += 1
                }
            }
        }
    }    
    return answer
}
