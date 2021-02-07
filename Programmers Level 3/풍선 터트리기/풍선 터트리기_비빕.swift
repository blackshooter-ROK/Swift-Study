import Foundation

func solution(_ a:[Int]) -> Int {
    var left = [Int](repeating: Int.max, count: a.count)
    var right = [Int](repeating: Int.max, count: a.count)

    var leftMin = a.first!
    var rightMin = a.last!
    
    for index in 0..<a.count {
        leftMin = min(leftMin, a[index])
        rightMin = min(rightMin, a[a.count - 1 - index])
        
        left[index] = leftMin
        right[a.count - 1 - index] = rightMin
    }
    
    var answer = 0
    
    for index in 0..<a.count {
        if index == 0 || index == a.count - 1 || left[index - 1] > a[index] || a[index] < right[index + 1] {
            answer += 1
        }
    }
    
    return answer
}
