//
// 문자열을 정수로 바꾸기
//

import Foundation

func solution(_ s:String) -> Int {
  var num: Int = 0
  num = Int(s) ?? 0
  return num
}
