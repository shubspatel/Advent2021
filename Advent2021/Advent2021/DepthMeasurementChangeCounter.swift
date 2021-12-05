//
//  DepthMeasurementCalculator.swift
//  Advent2021
//
//  Created by Shubham Patel on 12/4/21.
//

import Foundation

class DepthMeasurementChangeCounter {
    
    func countChanges(in measurements:[Int], windowSize: Int) -> Int {
        guard measurements.count > windowSize else { return 0 }
        var sum = 0
        var count = 0
        for index in 0..<windowSize {
            sum += measurements[index]
        }
        for index in windowSize..<measurements.count {
            let temporarySum = sum
            sum -= measurements[index-windowSize]
            sum += measurements[index]
            if sum > temporarySum { count += 1}
        }
        return count
    }
}
