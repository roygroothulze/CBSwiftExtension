//
//  UIDevice+Extension.swift
//  
//
//  Created by Roy Groot Hulze on 01/08/2023.
//

#if os(iOS)
import UIKit

public extension UIDevice {
    static var isIPhone: Bool {
        UIDevice.current.userInterfaceIdiom == .phone
    }
    
    static var isIPad: Bool {
        UIDevice.current.userInterfaceIdiom == .pad
    }
    
    @available(iOS 14.0, *)
    static var isMac: Bool {
        UIDevice.current.userInterfaceIdiom == .mac
    }
}
#endif
