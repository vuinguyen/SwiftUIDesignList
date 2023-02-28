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
        let fontSize = 30.0

        VStack {
            Text("Apple's yellow / light font")
                .foregroundColor(.yellow)
                .font(.system(size: fontSize, weight: .light))
                .padding([.top], 60)
            Text("Sunfish's yellow / light font")
                .foregroundColor(.sunfishYellow)
                .font(.sunfish(size: fontSize, weight: .light))
            Divider()
            Text("Apple's teal / regular font")
                .foregroundColor(.teal)
                .font(.system(size: fontSize, weight: .regular))
            Text("Sunfish's teal / regular font")
                .foregroundColor(.sunfishTeal)
                .font(.sunfish(size: fontSize, weight: .regular))
            Divider()
            Text("Apple's brown / bold font")
                .foregroundColor(.brown)
                .font(.system(size: fontSize, weight: .bold))
            Text("Sunfish's brown / bold font")
                .foregroundColor(.sunfishBrown)
                .font(.sunfish(size: fontSize, weight: .bold))
            Spacer()
        }

    }
}

struct TextDetail_Previews: PreviewProvider {
    static var previews: some View {
        TextDetail()
    }
}
