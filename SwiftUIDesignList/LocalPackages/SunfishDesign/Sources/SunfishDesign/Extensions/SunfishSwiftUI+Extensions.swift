//
//  SunfishSwiftUI+Extensions.swift
//  
//
//  Created by Vui Nguyen on 2/20/23.
//

import SwiftUI

// MARK: Color Extension

// Simplify initializing of Color with enum
extension Color {
    public init(_ color: SunfishColor) {
        self.init(color.rawValue, bundle: .module)
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

// Custom View Modifier to add custom font
struct FontModifier: ViewModifier {
    let font: SunfishFont

    func body(content: Content) -> some View {
        return content.font(Font.custom(font, size: font.size))
    }
}

// View extension that will take in custom View Modifer to add custom font
extension View {
    /// Use this modifier to select a type of SunfishFont
    /// Sample Usage:
    /// Text("Hello, World!")
    ///     .font(.sunfish(size: 30.0, weight: .regular))
    public func font(_ font: SunfishFont) -> some View {
        self.modifier(FontModifier(font: font))
    }
}

// MARK: Shape Extension

/// Use this modifier to fill in a Shape with a ShapeStyle that could be a SunfishColor,
/// and add a stroke border around that Shape, with a ShapeStyle that could be a SunfishColor
/// Sample Usage:
/// Circle()
///     .fill(.sunfishPink, strokeBorder: .sunfishBrown, lineWidth: 10.0)
///
/// Reference:
/// https://www.hackingwithswift.com/quick-start/swiftui/how-to-fill-and-stroke-shapes-at-the-same-time
extension Shape {
    public func fill<Fill: ShapeStyle,
                     Stroke: ShapeStyle>
    (_ fillStyle: Fill, strokeBorder strokeStyle: Stroke, lineWidth: Double = 1) -> some View {
        self
            .stroke(strokeStyle, lineWidth: lineWidth)
            .background(self.fill(fillStyle))
    }
}

// MARK: InsettableShape Extension
/// Use this modifier to fill in an InsettableShape with a ShapeStyle that could be a SunfishColor,
/// and add a stroke border around that InsettableShape, with a ShapeStyle that could be a SunfishColor
/// Sample Usage:
/// Circle()
///     .fill(.sunfishPink, strokeBorder: .sunfishBrown, lineWidth: 10.0)
///
/// Reference:
/// https://www.hackingwithswift.com/quick-start/swiftui/how-to-fill-and-stroke-shapes-at-the-same-time
extension InsettableShape {
    func fill<Fill: ShapeStyle, Stroke: ShapeStyle>(_ fillStyle: Fill, strokeBorder strokeStyle: Stroke, lineWidth: Double = 1) -> some View {
        self
            .strokeBorder(strokeStyle, lineWidth: lineWidth)
            .background(self.fill(fillStyle))
    }
}

// MARK: ShapeStyle Extension

/// Extend ShapeStyle so that View Modifiers that take a ShapeStyle,
/// can take a ShapeStyle that is a custom SunfishColor
///
/// Sample Usage with the background View Modifier:
/// Text("Hello, World!")
///    .background(.sunfishBlue)
///
/// Sample Usage with the foregroundColor View Modifier:
/// Text("Hello, World!")
///    .foregroundColor(.sunfishPink)
///
/// Sample Usage with the fill View Modifier, to fill in a Shape,
/// with a ShapeStyle that is a SunfishColor:
/// Rectangle()
///     .fill(.sunfishBlue)
///
/// Sample Usage with the stroke View Modifier, to add a stroke border around a Shape,
/// with a ShapeStyle that is a SunfishColor:
/// Ellipse()
///     .stroke(.sunfishBlue, lineWidth: 5.0)
extension ShapeStyle where Self == Color {
    public static var sunfishBlue: Color {
        Color(SunfishColor.sunfishBlue)
    }
    public static var sunfishBrown: Color {
        Color(SunfishColor.sunfishBrown)
    }
    public static var sunfishPink: Color {
        Color(SunfishColor.sunfishPink)
    }
    public static var sunfishTeal: Color {
        Color(SunfishColor.sunfishTeal)
    }
    public static var sunfishYellow: Color {
        Color(SunfishColor.sunfishYellow)
    }
}
