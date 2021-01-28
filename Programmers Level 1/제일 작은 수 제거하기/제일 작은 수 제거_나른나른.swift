//
//  제일 작은 수 제거하기_나른나른.swift
//

import Foundation

func solution(_ arr:[Int]) -> [Int] {
  func solution2(_ arr:[Int]) -> [Int] {
    var rst: [Int] = []
    var newArr: [Int] = []
    var minNum: Int = 0
    
    newArr = arr
    
    if arr.count == 1 {
      rst.append(-1)
      return rst
    }
    
    minNum = arr[0]

    for i in 0..<newArr.count {
      if minNum > newArr[i] {
        minNum = newArr[i]
      }
    }
    
    for i in 0..<newArr.count {
      if minNum == newArr[i] {
        newArr.remove(at: i)
        break
      }
    }

    rst = newArr
    
    return rst
  }
}
