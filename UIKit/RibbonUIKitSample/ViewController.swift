//
//  ViewController.swift
//  RibbonUIKitSample
//
//  Created by Niklas on 04/10/2022.
//

import UIKit
import RibbonKit

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // 1. Trigger with a completion closure. Then manually show the survey.
        Ribbon.shared.trigger("YOUR_TRIGGER") { error in
            if let error {
                print(error.localizedDescription)
            } else {
                Ribbon.shared.show()
            }
        }

        // 2. Same as above, but with await/async and throwing error.
//        Task {
//            do {
//                try await Ribbon.shared.trigger("YOUR_TRIGGER")
//                Ribbon.shared.show()
//            } catch {
//                print(error.localizedDescription)
//            }
//        }
    }
}
