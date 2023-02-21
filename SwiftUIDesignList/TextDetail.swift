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
            Text("Apple's brown")
                .foregroundColor(.brown)
                .padding([.top], 60)
            Text("Sunfish's brown")
                .foregroundColor(.sunfishBrown)
            Divider()
            Text("Apple's yellow")
                .foregroundColor(.yellow)
            Text("Sunfish's yellow")
                .foregroundColor(.sunfishYellow)
            Spacer()
        }

    }
}

struct TextDetail_Previews: PreviewProvider {
    static var previews: some View {
        TextDetail()
    }
}
