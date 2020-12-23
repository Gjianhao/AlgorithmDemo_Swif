//
//  ClimbStairs.swift
//  AlgorithmDemo_Swift
//
//  Created by gjh on 2020/12/23.
//

import Foundation

// 70.爬楼梯
func climbStairs(_ n: Int) -> Int {
    if n <= 2 {
        return n
    }
    var a = 1 // 相当于 f(1)
    var b = 2 // 相当于 f(2)
    for _ in 3..<n {
        let tmp = b
        b = a + b
        a = tmp
    }
    return b
}
