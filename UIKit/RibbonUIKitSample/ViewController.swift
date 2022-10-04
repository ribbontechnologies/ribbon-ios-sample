//
//  ViewController.swift
//  RibbonUIKitSample
//
//  Created by Niklas on 04/10/2022.
//

import UIKit
import RibbonKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        Ribbon.shared.trigger("NAME_OF_YOUR_TRIGGER")
    }


}

