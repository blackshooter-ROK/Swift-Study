// 2021.01.31 extramilejin

// String.split return type -> Array<SubString>
// String.Element == Character
// String, Character both can .lowercased(), .uppercased() 

func solution(_ s:String) -> String {
    var answer = ""
    var jaden = ""
    for c in s { // Character value binding
        if c == " " {
            answer += jaden + " "
            jaden = ""
            continue
        } else if jaden.count == 0 {
            jaden += c.uppercased()   
        } else {
            jaden += c.lowercased()
        }
    }
    answer += jaden
    return answer
}
