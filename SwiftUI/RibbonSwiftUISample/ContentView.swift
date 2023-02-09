//
//  ContentView.swift
//  RibbonSwiftUISample
//
//  Created by Niklas on 04/10/2022.
//

import SwiftUI
import RibbonKit
import Combine

struct ContentView: View {
    
    @State private var isShowing: Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, Ribbon!")
        }.ribbonSheet(show: $isShowing)
        .onAppear {
            // 1. Trigger with a callback state. Then manually show it.
            Ribbon.shared.trigger("YOUR_TRIGGER") { state in
                switch state {
                case .ready:
                    isShowing = true
                case .noStudy:
                    break
                case .error(let error):
                    print(error.localizedDescription)
                @unknown default:
                    break
                }
            }

            // 2. Same as 1 above, but with await async and throwing error. Wrap in a Task, or use .task for iOS15+
//            Task {
//                do {
//                    let state = try await Ribbon.shared.trigger("YOUR_TRIGGER")
//                    switch state {
//                    case .ready:
//                        isShowing = true
//                    case .noStudy:
//                        break
//                    @unknown default:
//                        break
//                    }
//                }
//                catch {
//                    print(error.localizedDescription)
//                }
//            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


extension UIApplication {
  var currentKeyWindow: UIWindow? {
    UIApplication.shared.connectedScenes
      .filter { $0.activationState == .foregroundActive }
      .map { $0 as? UIWindowScene }
      .compactMap { $0 }
      .first?.windows
      .filter { $0.isKeyWindow }
      .first
  }

  var rootViewController: UIViewController? {
    currentKeyWindow?.rootViewController
  }


}
