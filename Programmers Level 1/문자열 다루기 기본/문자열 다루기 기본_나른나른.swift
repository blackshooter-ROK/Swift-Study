//
// 문자열 다루기 기본
//

import Foundation

func solution(_ s:String) -> Bool {
  var bool: Bool = false
  if s.count == 4 || s.count == 6 {
    bool = (Int(s) != nil) ? true : false
  }
  return bool
}
