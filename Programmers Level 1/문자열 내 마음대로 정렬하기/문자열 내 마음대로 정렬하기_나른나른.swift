//문자열 내 마음대로 정렬하기.swift

import Foundation

func solution(_ strings:[String], _ n:Int) -> [String] {
  let sortedArr = strings.sorted { (front, behind) -> Bool in
    let frontIndex = front.index(front.startIndex, offsetBy: n)
    let behindIndex = behind.index(behind.startIndex, offsetBy: n)
    if front[frontIndex] == behind[behindIndex] {
      return front < behind
    }
    return front[frontIndex] < behind[behindIndex]
  }
  return sortedArr
}
