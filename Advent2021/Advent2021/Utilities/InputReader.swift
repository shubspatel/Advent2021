//
//  File.swift
//  
//
//  Created by Shubham Patel on 12/5/20.
//

import Foundation

class InputReader {
    
    static func readFile(_ file: String) -> String {
        do {
            let contents = try String(contentsOfFile: file)
            return contents
        } catch {
            print("Couldn't load file: \(error.localizedDescription)")
        }
        return ""
    }
    
    static func readFileIntoIntArray(_ file: String) -> [Int]? {
        let input = InputReader.readFile(file)
        let splitInput = input.split(separator: "\n")
        var array = [Int]()
        for item in splitInput {
            guard let convertedItem = Int(item) else { return nil }
            array.append(convertedItem)
        }
        return array
    }
}
