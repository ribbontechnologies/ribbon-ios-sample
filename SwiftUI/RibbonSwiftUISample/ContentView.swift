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
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, Ribbon!")
        }
        .onAppear {
            // These are the different way the API can be used.
            //
            // 1 Trigger and show attached to a new overlayed window managed by Ribbon
            Ribbon.shared.triggerAndShow("YOUR_TRIGGER")

            // 2 Tigger with a callback state. Then manually show it. Optionally pass your own view controller, if nil, it will attach to new window.
//            Ribbon.shared.trigger("YOUR_TRIGGER") { state in
//                switch state {
//                case .ready:
//                    Ribbon.shared.show()
//                case .noStudy:
//                    break
//                case .error(let error):
//                    print(error.localizedDescription)
//                @unknown default:
//                    break
//                }
//            }

            // 3 Same as 2 above, but with await async and throwing error. Wrap in a Task, or use .task for iOS15+
//            Task {
//                do {
//                    let state = try await Ribbon.shared.trigger("YOUR_TRIGGER")
//                    switch state {
//                    case .ready:
//                        Ribbon.shared.show()
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
