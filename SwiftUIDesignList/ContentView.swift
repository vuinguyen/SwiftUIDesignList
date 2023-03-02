//
//  ContentView.swift
//  SwiftUIDesignList
//
//  Created by Vui Nguyen on 2/9/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Text & Foreground Color", destination: TextForegroundColorDetail())
                NavigationLink("Text & Background Color", destination: TextBackgroundColorDetail())
                NavigationLink("Shapes", destination: ShapeDetail())
                NavigationLink("Images", destination: ImageDetail())
            }
            .navigationTitle("SwiftUI Components")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
