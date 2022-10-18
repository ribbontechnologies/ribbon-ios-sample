//
//  ViewController.swift
//  RibbonUIKitSample
//
//  Created by Niklas on 04/10/2022.
//

import UIKit
import RibbonKit
import Combine

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // These are the different way the API can be used.
        // 1 Trigger and show attached to a new overlayed window managed by Ribbon
        Ribbon.shared.trigger("YOUR_TRIGGER")

        // 2 Tigger with a callback state. Then manually show it. Optionally pass your own view controller, if nil, it will attach to new window.
//        Ribbon.shared.trigger("YOUR_TRIGGER") { [weak self] state in
//            guard let self else { return }
//                switch state {
//                case .ready:
////                    Ribbon.shared.show()
//                    Ribbon.shared.show(from: self)
//                case .noStudy:
//                    break
//                case .error(let error):
//                    print(error.localizedDescription)
//                @unknown default:
//                    break
//                }
//            }

        // 3 Same as 2 above, but with await async and throwing error. Wrap in a Task, or use .task for iOS15+
//            Task.init() {
//                do {
//                    let state = try await Ribbon.shared.triggerThrowing("YOUR_TRIGGER")
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
