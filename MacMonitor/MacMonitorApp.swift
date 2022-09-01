//
//  MacMonitorApp.swift
//  MacMonitor
//
//  Created by Isaac Sneddon-Jenkins on 01/09/2022.
//

import SwiftUI

@main
struct MacMonitorApp: App {
    @AppStorage("showMenuBarExtra") private var showMenuBarExtra = true
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        MenuBarExtra(
            "App Menu Bar Extra", systemImage: "star",
            isInserted: $showMenuBarExtra)
        {
            Text("Test")
        }
    }
}
