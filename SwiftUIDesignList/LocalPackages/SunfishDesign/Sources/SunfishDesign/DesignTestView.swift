//
//  DesignTestView.swift
//  
//
//  Created by Vui Nguyen on 2/20/23.
//

import SwiftUI

struct DesignTestView: View {
    var body: some View {
        VStack {
            Text("Apple's brown / bold font")
                .foregroundColor(.brown)
                .font(.system(size: 20.0, weight: .bold))
            Text("Sunfish's brown / bold font")
                .foregroundColor(.sunfishBrown)
                .font(.sunfish(size: 20.0, weight: .bold))
            Text("Apple's yellow / light font")
                .foregroundColor(.yellow)
                .font(.system(size: 25.0, weight: .light))
            Text("Sunfish's yellow / light font")
                .foregroundColor(.sunfishYellow)
                .font(.sunfish(size: 25.0, weight: .light))
            Text("Apple's regular font / blue background")
                .font(.system(size: 20.0, weight: .regular))
                .background(.blue)
            Text("Sunfish's regular font / blue background")
                .font(.sunfish(size: 20.0, weight: .regular))
                .background(.sunfishBlue)
        }
    }
}

struct DesignTestView_Previews: PreviewProvider {
    static var previews: some View {
        DesignTestView()
    }
}
