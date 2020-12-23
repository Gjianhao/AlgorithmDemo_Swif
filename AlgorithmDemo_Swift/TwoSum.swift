//
//  TwoSum.swift
//  AlgorithmDemo_Swift
//
//  Created by gjh on 2020/12/23.
//

import Foundation
// 1.两数之和
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int: Int]()
    for i in 0..<nums.count {
        let another = target - nums[i]
        if dict.keys.contains(another) {
            return [dict[another]!, i]
        }
        dict[nums[i]] = i
    }
    return []
}
