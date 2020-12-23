//
//  Search.swift
//  AlgorithmDemo_Swift
//
//  Created by gjh on 2020/12/23.
//

import Foundation

// 704.二分查找
func search(_ nums: [Int], _ target: Int) -> Int {
    var left = 0
    var right = nums.count - 1
    
    while left <= right {
        let middle = left + ((right - left) >> 2)
        if nums[middle] == target {
            return middle
        } else if nums[middle] < target {
            left = middle + 1
        } else {
            right = middle - 1
        }
    }
    return -1
}
