//
//  RibbonSwiftUISampleApp.swift
//  RibbonSwiftUISample
//
//  Created by Niklas on 04/10/2022.
//

import SwiftUI
import RibbonKit

@main
struct RibbonSwiftUISampleApp: App {
    
    init() {
        Ribbon.shared.configure(withID: "YOUR_RIBBON_ID")
        Ribbon.shared.setPreview(true) // Use this for testing as otherwise the tigger will just be triggered once
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
