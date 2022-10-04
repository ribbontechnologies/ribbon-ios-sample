//
//  ContentView.swift
//  RibbonSwiftUISample
//
//  Created by Niklas on 04/10/2022.
//

import SwiftUI
import RibbonKit

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, Ribbon!")
        }
        .onAppear {
            Ribbon.shared.trigger("NAME_OF_YOUR_TRIGGER")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
