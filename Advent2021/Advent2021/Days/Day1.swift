//
//  Day1.swift
//  Advent2021
//
//  Created by Shubham Patel on 12/4/21.
//

import Foundation

class Day1: Day {
    
    func solvePartOne() -> Any {
        let fileName = "/Users/shubhampatel/workspaces/Advent2021/Advent2021/Advent2021/assets/day1.txt"
        guard let input = InputReader.readFileIntoIntArray(fileName) else { return "Couldn't solve"}
        let counter = DepthMeasurementChangeCounter()
        return counter.countChanges(in: input, windowSize: 1)
    }
    
    func solvePartTwo() -> Any {
        let fileName = "/Users/shubhampatel/workspaces/Advent2021/Advent2021/Advent2021/assets/day1.txt"
        guard let input = InputReader.readFileIntoIntArray(fileName) else { return "Couldn't solve"}
        let counter = DepthMeasurementChangeCounter()
        return counter.countChanges(in: input, windowSize: 3)
    }
    
}
