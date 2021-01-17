// 2021.01.17 extramilejin

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var answer = [Int]()
    
    for element in arr {
        if element % divisor == 0 {answer.append(element)}
    }
    
    answer.sort(by: <)
    if answer.isEmpty {answer.append(-1)}
    
    return answer
}
