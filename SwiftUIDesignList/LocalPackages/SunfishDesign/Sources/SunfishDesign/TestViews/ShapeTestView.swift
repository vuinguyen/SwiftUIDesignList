//
//  SwiftUIView.swift
//  
//
//  Created by Vui Nguyen on 3/3/23.
//

import SwiftUI

struct ShapeTestView: View {
    var body: some View {
        VStack {
            Rectangle()
                .fill(.sunfishTeal)
            Circle()
                .fill(.sunfishPink, strokeBorder: .sunfishBrown, lineWidth: 10.0)
            Ellipse()
                .stroke(.sunfishBlue, lineWidth: 5.0)
                .background(.sunfishYellow)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ShapeTestView()
    }
}
