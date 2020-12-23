//
//  MoveZeroes.swift
//  AlgorithmDemo_Swift
//
//  Created by gjh on 2020/12/23.
//

import Foundation

// 283.移动零
func moveZeroes(_ nums: inout [Int]) {
    var j = 0
    for i in 0..<nums.count {
        if nums[i] != 0 {
            nums[j] = nums[i]
            if i != j {
                nums[i] = 0
            }
            j+=1
        }
    }
}
