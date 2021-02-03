//
// 정수 내림차순으로 배치하기
//

import Foundation

func solution(_ n:Int64) -> Int64 {
  let strArr = String(n).sorted().reversed()
  let rst = String(strArr)
  
  return Int64(rst)!
}
