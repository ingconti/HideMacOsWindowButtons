//
//  HideMacOsWindowButtonsApp.swift
//  HideMacOsWindowButtons
//
//  Created by ing.conti on 10/05/23.
//

import AppKit
import SwiftUI


// from:
// https://developer.apple.com/documentation/swiftui/nsapplicationdelegateadaptor

class MyAppDelegate: NSObject, NSApplicationDelegate {
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // 1st method:
        //customize(window: NSApplication.shared.windows.first)
    }
}

@main
struct HideMacOsWindowButtonsApp: App {
    
    @NSApplicationDelegateAdaptor private var appDelegate: MyAppDelegate

    var body: some Scene {
        WindowGroup {
           ContentView()
        }
    }
}

