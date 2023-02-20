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
            Text("Apple's brown")
                .foregroundColor(.brown)
            Text("Sunfish's brown")
                .foregroundColor(.sunfishBrown)
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
