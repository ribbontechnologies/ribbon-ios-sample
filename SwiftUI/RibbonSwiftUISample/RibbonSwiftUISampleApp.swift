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
        Ribbon.shared.setPreview(true) // For testing purposes only, allows the survey to be triggered more than once
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
