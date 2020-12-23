//
//  SearchInsert.swift
//  AlgorithmDemo_Swift
//
//  Created by gjh on 2020/12/23.
//

import Foundation

// 35.搜索插入位置
func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var left = 0
    var right = nums.count - 1
    while left <= right {
        let middle = left + ((right - left) >> 1)
        if nums[middle] == target {
            return middle
        } else if nums[middle] < target {
            left = middle + 1
        } else {
            right = middle - 1
        }
    }
    return right + 1
}
