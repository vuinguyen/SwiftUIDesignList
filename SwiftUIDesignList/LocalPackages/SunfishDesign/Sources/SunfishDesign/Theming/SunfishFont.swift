//
//  SunfishFont.swift
//  
//
//  Created by Vui Nguyen on 2/22/23.
//

import SwiftUI

public enum SunfishFontName: String, CaseIterable {
    case montserratLight = "Montserrat-Light"
    case montserratRegular = "Montserrat-Regular"
    case montserratSemiBold = "Montserrat-SemiBold"
    case montserratThin = "Montserrat-Thin"
}

public enum SunfishFontWeight {
    case light
    case regular
    case thin
    case semibold
}

public enum SunfishFont {
    case sunfish(size: CGFloat, weight: SunfishFontWeight)

    var name: String {
        switch self {
        case .sunfish(_, let weight):
            switch weight {
            case SunfishFontWeight.light:
                return SunfishFontName.montserratLight.rawValue
            case SunfishFontWeight.regular:
                return SunfishFontName.montserratRegular.rawValue
            case SunfishFontWeight.semibold:
                return SunfishFontName.montserratSemiBold.rawValue
            case SunfishFontWeight.thin:
                return SunfishFontName.montserratThin.rawValue
            }
        }
    }

    var size: CGFloat {
        switch self {
        case .sunfish(let size, _):
            return size
        }
    }

    var weight: Font.Weight {
        switch self {
        case .sunfish(_, let weight):
            switch weight {
            case SunfishFontWeight.light:
                return Font.Weight.light
            case SunfishFontWeight.regular:
                return Font.Weight.regular
            case SunfishFontWeight.thin:
                return Font.Weight.thin
            case SunfishFontWeight.semibold:
                return Font.Weight.semibold
            }
        }
    }
}


