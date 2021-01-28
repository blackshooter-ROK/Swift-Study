//
//  내적_나른나른.swift
//

import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
  var rst: Int = 0
  
  for i in 0..<a.count {
    rst += a[i] * b[i]
  }
  
  return rst
}
