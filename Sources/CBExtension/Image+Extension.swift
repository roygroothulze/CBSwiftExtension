//
//  Image+Extension.swift
//  
//
//  Created by Roy Groot Hulze on 23/09/2022.
//

import SwiftUI

@available(iOS 15.0, *)
extension Image {
    init?(data: Data) {
        if let uiImage = UIImage(data: data) {
            self.init(uiImage: uiImage)
        } else {
            return nil
        }
    }
}
