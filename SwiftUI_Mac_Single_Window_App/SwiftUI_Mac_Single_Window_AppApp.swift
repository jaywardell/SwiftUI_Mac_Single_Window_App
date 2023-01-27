//
//  SwiftUI_Mac_Single_Window_AppApp.swift
//  SwiftUI_Mac_Single_Window_App
//
//  Created by Joseph Wardell on 1/25/23.
//

import SwiftUI



@main
struct SwiftUI_Mac_Single_Window_AppApp: App {
    
    // this line gives us the rest of the features we need
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        // using Window instead of WindowGroup gives us
        // most of the features of a single-window app
        Window("A Single-Window App", id: "Single Window App") {
            ContentView()
        }
        .windowResizability(.contentSize)
    }
}

// MARK: -

final class AppDelegate: NSObject, NSApplicationDelegate {

    // SwiftUI won't turn off the tabs menu items in the View Menu
    // but we don't want them for this app
    // since there's only one window.
    func applicationDidFinishLaunching(_ notification: Notification) {
        NSApplication.shared.windows.first?.tabbingMode = .disallowed
    }
}
