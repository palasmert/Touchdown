//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Mert Palas on 14.01.2025.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
