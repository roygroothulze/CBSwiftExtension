//
//  View+Extensions.swift
//  
//
//  Created by Roy Groot Hulze on 23/09/2022.
//

import SwiftUI

@available(macOS 12, *)
@available(iOS 15.0, *)
@available(watchOS 8.0, *)
public extension View {
    
    /// Applies the given transform if the given condition evaluates to `true`.
    /// - Parameters:
    ///   - condition: The condition to evaluate.
    ///   - transform: The transform to apply to the source `View`.
    /// - Returns: Either the original `View` or the modified `View` if the condition is `true`.
    @ViewBuilder
    func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
    
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
    @available(watchOS 8.0, *)
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
    
    func squire(size: CGFloat, alignment: Alignment = .center) -> some View {
        self
            .frame(width: size, height: size, alignment: alignment)
    }
    
    #if os(iOS)
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
    #endif
}


#if os(iOS)
@available(iOS 15, *)
struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}
#endif
