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
        self.init(color.rawValue)
    }
}
