//
//  String+Extension.swift
//  
//
//  Created by Roy Groot Hulze on 01/08/2023.
//

import Foundation

extension String {
    var isNotEmpty: Bool {
        self.isEmpty == false
    }
    
    func match(for regexPattern: String, at index: Int) -> String? {
        do {
            let text = self
            let regex = try NSRegularExpression(pattern: regexPattern)
            guard
                let match = regex.firstMatch(
                    in: text,
                    options: [],
                    range: NSRange(location: 0, length: text.utf16.count)
                ),
                let wholeRange = Range(match.range(at: index), in: text)
            else { return nil }
            return String(text[wholeRange])
        } catch let error {
            print("invalid regex: \(error.localizedDescription)")
            return nil
        }
    }
}
