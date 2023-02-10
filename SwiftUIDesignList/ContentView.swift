//
//  ContentView.swift
//  SwiftUIDesignList
//
//  Created by Vui Nguyen on 2/9/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
//        }
//        .padding()
        NavigationStack {
            List {
                NavigationLink("Text", destination: TextDetail())
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
