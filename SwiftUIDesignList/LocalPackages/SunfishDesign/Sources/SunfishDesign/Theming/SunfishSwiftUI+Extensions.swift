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

// MARK: Font View Modifiers

// Load all fonts before we can use them
extension Font {
    public static func loadFonts() {
        SunfishFontName.allCases
            .map { Bundle.designBundle.url(forResource: Optional($0.rawValue), withExtension: "ttf") }
            .compactMap { $0 }
            .forEach { CTFontManagerRegisterFontsForURL($0 as CFURL, .process, nil) }
    }

    static func custom(_ font: SunfishFont, size: CGFloat) -> Font {
        Font.loadFonts()
        return Font.custom(font.name, size: size)
    }
}

// custom view modifier to add custom font
struct FontModifier: ViewModifier {
    let font: SunfishFont

    func body(content: Content) -> some View {
        return content.font(Font.custom(font, size: font.size))
    }
}

// view extension that will take in custom view modifer to add custom font
extension View {
    public func font(_ font: SunfishFont) -> some View {
        self.modifier(FontModifier(font: font))
    }
}

