//
//  AppDelegate.swift
//  RibbonUIKitSample
//
//  Created by Niklas on 04/10/2022.
//

import UIKit
import RibbonKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        Ribbon.shared.configure(withID: "YOUR_RIBBON_ID")
        Ribbon.shared.setPreview(true) // Use this for testing as otherwise the tigger will just be triggered once

        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {

    }


}

