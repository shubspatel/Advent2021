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
}
