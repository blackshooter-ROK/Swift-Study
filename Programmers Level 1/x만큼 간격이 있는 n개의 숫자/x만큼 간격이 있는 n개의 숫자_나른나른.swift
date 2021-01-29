//
//  x만큼 간격이 있는 n개의 숫자_나른나른.swift
//

import Foundation

func solution(_ x:Int, _ n:Int) -> [Int64] {
  var rst: [Int64] = []
  var newX = Int64(x)

  for _ in 0..<n {
    rst.append(newX)
    newX = newX + Int64(x)
  }
  
  return rst
}
