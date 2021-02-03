//
// 핸드폰 번호 가리기
//

import Foundation

func solution(_ phone_number:String) -> String {
  var rst: String = ""
  var num = Array(phone_number)
  
  let starCount = num.count - 4
  
    for i in 0..<starCount {
     num[i] = "*"
    }

  rst = String(num)
  return rst
}
