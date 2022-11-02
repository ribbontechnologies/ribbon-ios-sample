//
//  MyView.swift
//  RibbonSwiftUISample
//
//  Created by Niklas on 18/10/2022.
//

import SwiftUI
import RibbonKit

struct WithModifierView: View {
    
    @State private var show = false
    
    var body: some View {
        VStack {
            Text("Tap me!")
        }
        .ribbonSheet(show: $show)
        .onTapGesture {
            Ribbon.shared.trigger("txt") { state in
                switch state {
                case .ready:
                    show = true
                case .noStudy:
                    break
                case .error(let error):
                    print(error.localizedDescription)
                @unknown default:
                    break
                }
            }
        }
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        WithModifierView()
    }
}
