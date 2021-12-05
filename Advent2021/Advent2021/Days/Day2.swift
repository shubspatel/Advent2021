//
//  Day2.swift
//  Advent2021
//
//  Created by Shubham Patel on 12/4/21.
//

import Foundation

class Day2: Day {
    
    private let file = "/Users/shubhampatel/workspaces/Advent2021/Advent2021/Advent2021/assets/day2.txt"
    private var x: Int = 0
    private var y: Int = 0
    private var aim: Int = 0
    
    func solvePartOne() -> Any {
        clearPosition()
        let directions = InputReader.readFileIntoStringArray(file)
        for direction in directions {
            let parts = direction.components(separatedBy: " ")
            guard let movement = DirectionEnum(rawValue: parts[0]),
                  let amount = Int(parts[1]) else { break }
            
            switch movement {
            case .forward:
                x += amount
            case .down:
                y += amount
            case .up:
                y -= amount
            }
        }
        return x * y
    }
    
    func solvePartTwo() -> Any {
        clearPosition()
        let directions = InputReader.readFileIntoStringArray(file)
        for direction in directions {
            let parts = direction.components(separatedBy: " ")
            guard let movement = DirectionEnum(rawValue: parts[0]),
                  let amount = Int(parts[1]) else { break }
            
            switch movement {
            case .forward:
                x += amount
                y += amount * aim
            case .down:
                aim += amount
            case .up:
                aim -= amount
            }
        }
        return x * y
    }
    
    private func clearPosition() {
        x = 0
        y = 0
    }
}

fileprivate enum DirectionEnum: String {
    case forward = "forward"
    case down = "down"
    case up = "up"
}
