import Foundation

var num = [Int]()
var op = [String]()

var minMemo = [[Int]]()
var maxMemo = [[Int]]()

func dp(_ start: Int, _ end:Int, _ isMax: Bool) -> Int {
    if start == end { return num[start] }
    
    if !isMax && minMemo[start][end] != Int.max { return minMemo[start][end] }
    if isMax && maxMemo[start][end] != Int.min { return maxMemo[start][end] }
    
    if end - start == 1 {
        var result = 0
        
        if op[start] == "+" { result = num[start] + num[end] }
        else { result = num[start] - num[end] }
        
        minMemo[start][end] = result
        maxMemo[start][end] = result
    }
    else {
        var minResult = Int.max
        var maxResult = Int.min
        
        for i in 0..<end-start {
            if op[start + i] == "+" {
                minResult = min(minResult, dp(start, start + i, false) + dp(start + i + 1, end, false))
                maxResult = max(maxResult, dp(start, start + i, true) + dp(start + i + 1, end, true))
            }
            else {
                minResult = min(minResult, dp(start, start + i, false) - dp(start + i + 1, end, true))
                maxResult = max(maxResult, dp(start, start + i, true) - dp(start + i + 1, end, false))
            }
        }
        
        minMemo[start][end] = minResult
        maxMemo[start][end] = maxResult
    }
    
    return isMax ? maxMemo[start][end] : minMemo[start][end]
}

func solution(_ input_array:[String]) -> Int {
    num = input_array.compactMap{ Int($0) }
    op = input_array.filter{ Int($0) == nil }
    
    minMemo = [[Int]](repeating: [Int](repeating: Int.max, count: num.count), count: num.count)
    maxMemo = [[Int]](repeating: [Int](repeating: Int.min, count: num.count), count: num.count)
    
    return dp(0, num.count - 1, true)
}
