//: [Previous](@previous)

import Foundation

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var bres: Int = 0
    var ares = 0
    
    if a[0] > b[0] {
        ares += 1
    } else if a[0] == b[0] {
        ares += 0
    } else {
        bres += 1
    }
    
    if a[1] > b[1] {
        ares += 1
    } else if a[1] == b[1] {
        ares += 0
    } else {
        bres += 1
    }
    
    if a[2] > b[2] {
        ares += 1
    } else if a[2] == b[2] {
        ares += 0
    } else {
        bres += 1
    }
    
    return [ares, bres]
}

//print(compareTriplets(a: [17,28,30], b: [99, 16, 8]))



func diagonalDifference(arr: [[Int]]) -> Int {
    var ltr = 0
    var rtl = 0
    for (idx,elem) in arr.enumerated() {
        // get the element that matches the index of i in arr
        ltr+=elem[idx]
    }
    for (idx,elem) in arr.reversed().enumerated() {
        rtl+=elem[idx]
    }
    
    return abs(ltr-rtl)
}

let arr1: [[Int]] = [
    [1, 2, 3],
    [4, 5, 6],
    [9, 8, 9]
]
let arr2 = [[1,2,3,3],
            [4,5,6,4],
            [9,8,9,8],
            [9,8,9,8]]

//print(diagonalDifference(arr: arr1))


func plusMinus(arr: [Int]) -> Void {
    var pos: Double = 0
    var neg: Double = 0
    var zer: Double = 0
    var len = Double(arr.count)
    
    arr.forEach {
        if $0 > 0 {
            pos += 1
        } else if $0 == 0 {
            zer += 1
        } else {
            neg += 1
        }
    }
    print( """
    \(String(format: "%.6f", pos/len))
    \(String(format: "%.6f", neg/len))
    \(String(format: "%.6f", zer/len))
"""
    )

}
//plusMinus(arr: [1,1,0,-1,-1])
func staircase(n: Int) -> Void {
    for i in 1...n {
        let spaces = String(repeating: " ", count: n-i)
        let hashes = String(repeating: "#", count: i)
        print(spaces+hashes)
    }
}
staircase(n: 6)


//: [Next](@next)
