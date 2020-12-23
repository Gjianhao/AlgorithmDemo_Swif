//
//  MaxArea.swift
//  AlgorithmDemo_Swift
//
//  Created by gjh on 2020/12/23.
//

import Foundation

// 11.盛最多水的容器
func maxArea(_ height: [Int]) -> Int {
    var max = 0
    var i = 0
    var j = height.count - 1
    var minHeight = 0
    
    while i < j {
        // 最小的高度
        if height[i] < height[j] {
            minHeight = height[i]
            i+=1
        } else {
            minHeight = height[j]
            j-=1
        }
        // 表示面积
        let area = (j-i+1) * minHeight
        max = max > area ? max : area
    }
    return max
}
