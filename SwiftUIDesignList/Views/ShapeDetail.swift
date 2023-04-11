//
//  ShapeDetail.swift
//  SwiftUIDesignList
//
//  Created by Vui Nguyen on 2/10/23.
//

import SwiftUI
import SunfishDesign

struct ShapeDetail: View {
    var body: some View {
        VStack {
            Rectangle()
                .fill(.sunfishTeal)
            Circle()
                .fill(.sunfishPink, strokeBorder: .sunfishBrown, lineWidth: 10.0)
            Ellipse()
                .strokeBorder(.sunfishBlue, lineWidth: 5.0)
                .background(.sunfishYellow)
        }
    }
}

struct ShapeDetail_Previews: PreviewProvider {
    static var previews: some View {
        ShapeDetail()
    }
}
