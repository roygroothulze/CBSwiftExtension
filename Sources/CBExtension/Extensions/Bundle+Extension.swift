//
//  Bundle+Extension.swift
//  
//
//  Created by Roy Groot Hulze on 23/09/2022.
//

import SwiftUI

public extension Bundle {
    var shortVersion: String {
        if let result = infoDictionary?["CFBundleShortVersionString"] as? String {
            return result
        } else {
            assert(false)
            return ""
        }
    }

    var buildVersion: String {
        if let result = infoDictionary?["CFBundleVersion"] as? String {
            return result
        } else {
            assert(false)
            return ""
        }
    }

    var fullVersion: String {
        return "\(shortVersion)(\(buildVersion))"
    }
}
