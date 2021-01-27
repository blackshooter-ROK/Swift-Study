//두 정수 사이의 합_나른나른.swift

import Foundation

func solution(_ a:Int, _ b:Int) -> Int64 {
  var sum = 0
  
  if a<=b {
    for a in a...b {
      sum += a
    }
  } else {
    for b in b...a {
      sum += b
    }
  }

  return Int64(sum)
}
