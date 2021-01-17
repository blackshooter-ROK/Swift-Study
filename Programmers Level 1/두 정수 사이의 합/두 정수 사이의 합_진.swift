// 2021.01.17 extramilejin

func solution(_ a:Int, _ b:Int) -> Int64 {
    let result = (a + b) * (abs(a - b) + 1) / 2
    return Int64(result)
}

