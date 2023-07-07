# Ribbon iOS Sample apps in SwiftUI and UIKit

This repo contains sample iOS apps for integrating with the Ribbon platform iOS SDK.
See related SDK documentation: https://docs.ribbonapp.com/docs/mobile-ios-sdk

The sample apps come in two flavors:

## UIKit

In the `/UIKit` folder you will find a simple iOS app with a single `UIViewController` that triggers and shows a survey on appearance.
Make to set your Ribbon organisation ID and trigger name in the following places:
- AppDelegate.swift: `Ribbon.shared.configure(withID: "YOUR_RIBBON_ID")`
- ViewController.swift: `Ribbon.shared.trigger("TRIGGER_NAME")`

## SwiftUI

In the `/SwiftUI` folder you will find a simple iOS app with a single `View` that triggers and shows a survey on appearance.
Make to set your Ribbon organisation ID and trigger name in the following places:
- RibbonSwiftUISampleApp.swift: `Ribbon.shared.configure(withID: "YOUR_RIBBON_ID")`
- ContentView.swift: `Ribbon.shared.trigger("TRIGGER_NAME")`

Simply build and run each app to test your Ribbon surveys.