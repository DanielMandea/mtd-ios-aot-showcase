//
//  AOTSmoothieApp.swift
//  Shared
//
//  Created by Daniel Mandea on 15/07/2020.
//

import SwiftUI

@main
struct AOTSmoothieApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: ViewModel())
        }
    }
}
