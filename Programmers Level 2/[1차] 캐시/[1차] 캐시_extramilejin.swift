// 2021.02.05 extramilejin

func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    var cache = [(String, Int)]()
    var answer = 0
    for city in cities {
        var found = false
        for j in 0..<cache.count {cache[j].1 += 1}
        for i in 0..<cache.count {
            if city.uppercased() == cache[i].0 {
                cache[i].1 = 0
                found = true
                answer += 1
                break
            }
        }
        
        if !found {
           if !cache.isEmpty && cache.count == cacheSize {
               cache.removeFirst()
           }
           if cache.count < cacheSize {cache.append((city.uppercased(), 0))}
           answer += 5
        }
        cache.sort{$0.1 > $1.1}
    }
    return answer
}
