//
//  Optional+Extension.swift
//  
//
//  Created by Roy Groot Hulze on 01/08/2023.
//

import Foundation

public extension Optional {
    var isSet: Bool {
        self != nil
    }
}
