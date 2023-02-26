//
//  TextDetail.swift
//  SwiftUIDesignList
//
//  Created by Vui Nguyen on 2/10/23.
//

import SwiftUI
import SunfishDesign

struct TextDetail: View {
    var body: some View {
        VStack {
            Text("Apple's brown / semibold font")
                .foregroundColor(.brown)
                .font(.system(size: 25.0, weight: .semibold))
                .padding([.top], 60)
            Text("Sunfish's brown / semibold font")
                .foregroundColor(.sunfishBrown)
                .font(.sunfish(size: 25.0, weight: .semibold))
            Divider()
            Text("Apple's yellow color / thin font")
                .foregroundColor(.yellow)
                .font(.system(size: 25.0, weight: .thin))
            Text("Sunfish's yellow color / thin font")
                .foregroundColor(.sunfishYellow)
                .font(.sunfish(size: 25.0, weight: .thin))
            Spacer()
        }

    }
}

struct TextDetail_Previews: PreviewProvider {
    static var previews: some View {
        TextDetail()
    }
}
