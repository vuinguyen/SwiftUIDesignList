//
//  TextBackgroundColorDetail.swift
//  SwiftUIDesignList
//
//  Created by Vui Nguyen on 3/1/23.
//

import SwiftUI
import SunfishDesign

struct TextBackgroundColorDetail: View {
    let fontSize = 30.0
    
    var body: some View {
        VStack {
            Group {
                Text("Apple's regular font / pink background")
                    .font(.system(size: fontSize, weight: .regular))
                    .background(.pink)
                    .padding([.top], 60)
                Divider()
                Text("Sunfish's regular font / pink background")
                    .font(.sunfish(size: fontSize, weight: .regular))
                    .background(.sunfishPink)
            }
            Spacer()
        }
    }
}

struct TextBackgroundColorDetail_Previews: PreviewProvider {
    static var previews: some View {
        TextBackgroundColorDetail()
    }
}
