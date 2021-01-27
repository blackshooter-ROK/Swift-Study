// 나누어 떨어지는 숫자 배열_나른나른.swift

import Foundation

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
  var rst: [Int] = []
  
  arr.forEach { (elem) in
    if elem % divisor == 0 {
      rst.append(elem)
    }
  }
  
  if rst.isEmpty {
    rst.append(-1)
  }
  
  return rst.sorted()
}
