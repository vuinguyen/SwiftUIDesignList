//
//  SunfishSwiftUI+Extensions.swift
//  
//
//  Created by Vui Nguyen on 2/20/23.
//

import SwiftUI

// MARK: Color View Modifiers

// simplify initializing of Color with enum
extension Color {
    public init(_ color: SunfishColor) {
        self.init(color.rawValue, bundle: .designBundle)
    }
}

// custom view modifier to add foreground color
struct ForegroundColorModifier: ViewModifier {
    let color: SunfishColor
    func body(content: Content) -> some View {
        content.foregroundColor(Color(color))
    }
}

// view extension that will take in custom view modifier for foreground color
extension View {
    public func foregroundColor(_ color: SunfishColor) -> some View {
        self.modifier(ForegroundColorModifier(color: color))
    }
}
