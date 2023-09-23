//
//  Date+Extension.swift
//  
//
//  Created by Roy Groot Hulze on 01/08/2023.
//

import Foundation

@available(macOS 12.0, *)
@available(iOS 15.0, *)
@available(watchOS 8.0, *)
public extension Date {
    @available(tvOS 53.0, *)
    var weekdayDisplayFormat: String {
        self.formatted(.dateTime.weekday(.wide))
    }
    
    @available(tvOS 15.0, *)
    var dayDisplayFormat: String {
        self.formatted(.dateTime.day())
    }
    
    static func dateFrom(year: Int = 2023, month: Int, day: Int) -> Date {
        let components = DateComponents(
                calendar: Calendar.current,
                year: year,
                month: month,
                day: day)
        
        return Calendar.current.date(from: components)!
    }
}
