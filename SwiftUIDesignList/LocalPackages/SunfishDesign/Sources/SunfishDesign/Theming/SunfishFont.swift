//
//  SunfishFont.swift
//  
//
//  Created by Vui Nguyen on 2/22/23.
//

import SwiftUI

public enum SunfishFontName: String, CaseIterable {
    case bellotaBold = "Bellota-Bold"
    case bellotaLight = "Bellota-Light"
    case bellotaRegular = "Bellota-Regular"
}

public enum SunfishFontWeight {
    case bold
    case light
    case regular
}

public enum SunfishFont {
    case sunfish(size: CGFloat, weight: SunfishFontWeight)

    var name: String {
        switch self {
        case .sunfish(_, let weight):
            switch weight {
            case SunfishFontWeight.bold:
                return SunfishFontName.bellotaBold.rawValue
            case SunfishFontWeight.light:
                return SunfishFontName.bellotaLight.rawValue
            case SunfishFontWeight.regular:
                return SunfishFontName.bellotaRegular.rawValue

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
            case SunfishFontWeight.bold:
                return Font.Weight.bold
            case SunfishFontWeight.light:
                return Font.Weight.light
            case SunfishFontWeight.regular:
                return Font.Weight.regular
            }
        }
    }
}


