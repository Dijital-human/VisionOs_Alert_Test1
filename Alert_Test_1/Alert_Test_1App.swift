//
//  Alert_Test_1App.swift
//  Alert_Test_1
//
//  Created by Famil Mustafayev on 05.08.24.
//

import SwiftUI

@main
struct Alert_Test_1App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
