//
//  정수 제곱근 판별_나른나른.swift
//

import Foundation

// if 문 사용
func solution1(_ n:Int64) -> Int64 {
  var rst: Int64 = 0
  let x = Int64(sqrt(Double(n)))
  
  if x * x == n {
    rst = (x + 1) * (x + 1)
  } else {
    rst = -1
  }
  
  return rst
}

// 삼항 연산자를 이용한 return
func solution2(_ n:Int64) -> Int64 {
  let x = Int64(sqrt(Double(n)))
  return (x * x == n) ? ((x + 1) * (x + 1)) : -1
}
