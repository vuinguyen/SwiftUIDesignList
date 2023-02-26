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
            Text("Apple's brown and semibold font")
                .foregroundColor(.brown)
                .font(.system(size: 20.0, weight: .semibold))
            Text("Sunfish's brown and semibold font")
                .foregroundColor(.sunfishBrown)
                .font(.sunfish(size: 20.0, weight: .semibold))
            Text("Apple's yellow")
                .foregroundColor(.yellow)
            Text("Sunfish's yellow")
                .foregroundColor(.sunfishYellow)
        }
    }
}

struct DesignTestView_Previews: PreviewProvider {
    static var previews: some View {
        DesignTestView()
    }
}
