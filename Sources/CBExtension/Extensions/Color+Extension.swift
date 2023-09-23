//
//  Color+Extension.swift
//  
//
//  Created by Roy Groot Hulze on 01/08/2023.
//

import SwiftUI

@available(tvOS 13.0, *)
@available(macOS 10.15, *)
@available(iOS 13.0, *)
@available(watchOS 8.0, *)
public extension Color {
    static let paleYellow   = Color(red: 252/255, green: 225/255, blue: 121/255)
    static let palePink     = Color(red: 254/255, green: 138/255, blue: 138/255)
    static let darkGreen    = Color(red: 0/255, green: 67/255, blue: 13/255)
    static let paleGreen    = Color(red: 163/255, green: 230/255, blue: 127/255)
    static let paleBlue     = Color(red: 139/255, green: 229/255, blue: 233/255)
    static let skyBlue      = Color(red: 103/255, green: 155/255, blue: 197/255)
    static let paleOrange   = Color(red: 197/255, green: 161/255, blue: 103/255)
    static let widgetDarkOrange   = Color(red: 172/255, green: 110/255, blue: 16/255)
    static let paleRed      = Color(red: 174/255, green: 80/255, blue: 80/255)
    static let paleBrown    = Color(red: 124/255, green: 102/255, blue: 85/255)
    
    #if os(iOS)
    static let lightText = Color(UIColor.lightText)
    static let darkText = Color(UIColor.darkText)

    static let label = Color(UIColor.label)
    static let secondaryLabel = Color(UIColor.secondaryLabel)
    static let tertiaryLabel = Color(UIColor.tertiaryLabel)
    static let quaternaryLabel = Color(UIColor.quaternaryLabel)

    static let systemBackground                 = Color(UIColor.systemBackground)
    static let secondarySystemBackground        = Color(UIColor.secondarySystemBackground)
    static let tertiarySystemBackground         = Color(UIColor.tertiarySystemBackground)
    static let systemGroupedBackground          = Color(UIColor.systemGroupedBackground)
    #endif
}

