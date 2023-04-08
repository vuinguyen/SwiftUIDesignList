//
//  TextDetail.swift
//  SwiftUIDesignList
//
//  Created by Vui Nguyen on 2/10/23.
//

import SwiftUI
import SunfishDesign

struct TextForegroundColorDetail: View {
    let fontSize = 30.0

    var body: some View {
        VStack {
            Group {
                Text("Apple's regular font")
                    .font(.system(size: fontSize, weight: .regular))
                    .padding([.top], 60)
                Text("Sunfish's regular font")
                    .font(.sunfish(size: fontSize, weight: .regular))
            }
            Divider()
            Group {
                Text("Apple's yellow / light font")
                    .foregroundColor(.yellow)
                    .font(.system(size: fontSize, weight: .light))
                Text("Sunfish's yellow / light font")
                    .foregroundColor(.sunfishYellow)
                    .font(.sunfish(size: fontSize, weight: .light))
            }
            Divider()
            Group {
                Text("Apple's teal / regular font")
                    .foregroundColor(.teal)
                    .font(.system(size: fontSize, weight: .regular))
                Text("Sunfish's teal / regular font")
                    .foregroundColor(.sunfishTeal)
                    .font(.sunfish(size: fontSize, weight: .regular))
            }
            Divider()
            Group {
                Text("Apple's brown / bold font")
                    .foregroundColor(.brown)
                    .font(.system(size: fontSize, weight: .bold))
                Text("Sunfish's brown / bold font")
                    .foregroundColor(.sunfishBrown)
                    .font(.sunfish(size: fontSize, weight: .bold))
            }
            Spacer()
        }

    }
}

struct TextDetail_Previews: PreviewProvider {
    static var previews: some View {
        TextForegroundColorDetail()
    }
}
