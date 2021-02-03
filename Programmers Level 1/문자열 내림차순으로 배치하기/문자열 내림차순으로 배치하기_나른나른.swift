//
// 문자열 내림차순으로 배치하기
//

import Foundation

func solution(_ s:String) -> String {
  var rst: String = ""
  var arr: [Character] = []
  
  arr = Array(s).sorted().reversed()
  rst = String(arr)
  
  return rst
}
