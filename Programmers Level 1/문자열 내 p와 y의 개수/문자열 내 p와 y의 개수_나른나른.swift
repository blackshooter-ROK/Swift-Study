//문자열 내의 p와y의 개수_나른나른.swift

import Foundation

import Foundation

func solution(_ s:String) -> Bool
{
  var countP: Int = 0
  var countY: Int = 0
  
  s.lowercased().forEach { (c) in
    if c == "p" {
      countP = countP + 1
    }
    
    if c == "y" {
      countY = countY + 1
    }
  }
  
  if countP == countY {
    return true
  } else {
    return false
  }
}
