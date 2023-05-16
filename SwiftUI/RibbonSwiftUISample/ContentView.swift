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
        .padding()
        .onAppear {
            // 1. Trigger with a callback closure. Then manually show it.
            Ribbon.shared.trigger("YOUR_TRIGGER") { error in
                if let error {
                    print(error.localizedDescription)
                } else {
                    Ribbon.shared.show()
                }
            }
        }
//        .task {
//            // 2. Same as above, but with await/async and throwing error.
//            // Wrap in a Task, or use the .task view modeifier for iOS 15+
//            do {
//                try await Ribbon.shared.trigger("YOUR_TRIGGER")
//            }
//            catch {
//                print(error.localizedDescription)
//            }
//        }
    }
}
