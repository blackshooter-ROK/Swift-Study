import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var ret: [[Int]] = []
    let m = arr1.count
    let n = arr1[0].count
    let q = arr2[0].count
    
    for i in 0..<m {
        var row = [Int]()
        for k in 0..<q {
            var sum = 0
            for j in 0..<n {
                sum += arr1[i][j] * arr2[j][k] 
            }
            row.append(sum)
        }
        ret.append(row)
    }
    return ret
}
