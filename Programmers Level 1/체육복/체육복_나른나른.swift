//
//  나른나른.swift
//
// 체육복

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
  var studentNum = n - lost.count // 전체 학생수 - 잃어버린 학생수
  
  var newReverve = reserve // 여분을 가진 학생 배열
  var newLost = lost // 잃어버린 학생 배열
  
  
  // 여분을 가진 학생이 도둑 맞은 경우
  for i in 0...reserve.count-1 {
    for k in 0...lost.count-1 {
      if newLost[k] == newReverve[i] {
        newReverve[i] = 0
        newLost[k] = 0
        studentNum = studentNum+1
        break
      }
    }
  }
  
  // 그 이외의 경우
  for j in 0...newLost.count-1 {
    for i in 0...newReverve.count-1 {
      if newReverve[i] == 0 || newLost[j] == 0 {
        continue
      } else if newLost[j]-1 == newReverve[i] || newLost[j]+1 == newReverve[i] {
        newReverve[i] = 0
        newLost[j] = 0
        studentNum += 1
      }
    }
  }
  
  return studentNum
}
