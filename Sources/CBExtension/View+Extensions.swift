//
//  View+Extensions.swift
//  
//
//  Created by Roy Groot Hulze on 23/09/2022.
//

import SwiftUI

@available(macOS 12, *)
@available(iOS 15.0, *)
public extension View {
    
    // MARK: Align helpers
    func alignCenterHorizontally() -> some View {
        HStack {
            Spacer()
            self
            Spacer()
        }
    }
    
    func alignCenterVertically() -> some View {
        VStack {
            Spacer()
            self
            Spacer()
        }
    }
    
    func alignLeft() -> some View {
        HStack {
            self
            Spacer()
        }
    }
    
    func alignRight() -> some View {
        HStack {
            Spacer()
            self
        }
    }
    
    func alignTop() -> some View {
        VStack {
            self
            Spacer()
        }
    }
    
    func alignBottom() -> some View {
        VStack {
            Spacer()
            self
        }
    }
    
    
    // MARK: Toolbar helpers
    func addCancelToToolBar(presentationMode: Binding<PresentationMode>, title: String = "Cancel") -> some View {
        self
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button(title, role: .destructive) {
                        presentationMode.wrappedValue.dismiss()
                    }
                }
            }
    }
    
    // MARK: Property helpers
    func hidden(_ shouldHide: Bool) -> some View {
        opacity(shouldHide ? 0 : 1)
    }
}
