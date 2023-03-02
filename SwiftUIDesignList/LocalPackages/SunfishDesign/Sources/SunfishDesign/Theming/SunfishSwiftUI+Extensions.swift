//
//  SunfishSwiftUI+Extensions.swift
//  
//
//  Created by Vui Nguyen on 2/20/23.
//

import SwiftUI

// MARK: Color View Modifiers

// Simplify initializing of Color with enum
extension Color {
    public init(_ color: SunfishColor) {
        self.init(color.rawValue, bundle: .module)
    }
}

// Custom view modifier to add foreground color
struct ForegroundColorModifier: ViewModifier {
    let color: SunfishColor
    func body(content: Content) -> some View {
        content.foregroundColor(Color(color))
    }
}

// View extension that will take in custom view modifier for foreground color
extension View {
    /// Use this modifier to fill in a foreground with a SunfishColor
    /// Sample Usage:
    /// Text("Hello, World!")
    ///    .foregroundColor(.sunfishPink)
    public func foregroundColor(_ color: SunfishColor) -> some View {
        self.modifier(ForegroundColorModifier(color: color))
    }
}

// Custom view modifier to add background color
struct BackgroundColorModifer: ViewModifier {
    let color: SunfishColor

    func body(content: Content) -> some View {
        content.background(Color(color.rawValue, bundle: .module))
    }
}

// View extension that will take in custom view modifier for foreground color
extension View {
    /// Use this modifier to fill in a  background with a SunfishColor
    /// Sample Usage:
    /// Text("Hello, World!")
    ///    .background(.sunfishBlue)
    public func background(_ color: SunfishColor) -> some View {
        self.modifier(BackgroundColorModifer(color: color))
    }
}

// MARK: Font View Modifiers

// Load all fonts before we can use them
extension Font {
    public static func loadFonts() {
        SunfishFontName.allCases
            .map { Bundle.module.url(forResource: Optional($0.rawValue), withExtension: "ttf") }
            .compactMap { $0 }
            .forEach { CTFontManagerRegisterFontsForURL($0 as CFURL, .process, nil) }
    }

    static func custom(_ font: SunfishFont, size: CGFloat) -> Font {
        Font.loadFonts()
        return Font.custom(font.name, size: size)
    }
}

// Custom view modifier to add custom font
struct FontModifier: ViewModifier {
    let font: SunfishFont

    func body(content: Content) -> some View {
        return content.font(Font.custom(font, size: font.size))
    }
}

// View extension that will take in custom view modifer to add custom font
extension View {
    /// Use this modifier to select a type of SunfishFont
    /// Sample Usage:
    /// Text("Hello, World!")
    ///     .font(.sunfish(size: 30.0, weight: .regular))
    public func font(_ font: SunfishFont) -> some View {
        self.modifier(FontModifier(font: font))
    }
}

