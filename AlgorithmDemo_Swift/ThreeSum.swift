//
//  ThreeSum.swift
//  AlgorithmDemo_Swift
//
//  Created by gjh on 2020/12/23.
//

import Foundation

// 15.三数之和
func threeSum(_ nums: [Int]) -> [[Int]] {
    // 先排序
    let newNums = nums.sorted()
    // 定义个结果
    var result = [[Int]]()
    // 遍历数组
    for i in 0..<newNums.count {
        // 排序之后如果第一个元素已经大于零,那就不可能组成三元组了,直接返回
        if newNums[i] > 0 {
            return result
        }
        /*
         错误的去重方法: 会漏掉-1,-1,2 这种
         if newNums[i] == newNums[i + 1] {
            continue
         }
         */
        // 去重
        if i > 0 && newNums[i] == newNums[i - 1] {
            continue
        }
        var left = i + 1
        var right = newNums.count - 1
        while left < right {
            if newNums[i] + newNums[left] + newNums[right] > 0 {
                right -= 1
            } else if newNums[i] + newNums[left] + newNums[right] < 0 {
                left += 1
            } else {
                result.append([newNums[i], newNums[left], newNums[right]])
                // 去重逻辑应该放在找到三个元组之后
                while left < right && newNums[right] == newNums[right - 1] {
                    right -= 1
                }
                while left < right && newNums[left] == newNums[left + 1] {
                    left += 1
                }
                // 找到答案时,双指针同时收缩
                right-=1
                left+=1
            }
        }
    }
    return result
}
