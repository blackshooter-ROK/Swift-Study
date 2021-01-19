//
//  나른나른.swift
//
// 가운데 글자 가져오기

import Foundation

func solution(_ s:String) -> String {
  guard s.count>=1, s.count<=100 else { return "" }
  
  var result: String = ""
  var strArr = Array(s)

  if s.count%2 != 0 {
    result.append(strArr[s.count/2])
  } else {
    result.append(strArr[s.count/2-1])
    result.append(strArr[s.count/2])
  }
  
  return result
}
