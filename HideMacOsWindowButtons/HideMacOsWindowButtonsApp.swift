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
        //print("AAAA")
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


func customize(window: NSWindow?) {
    guard let window = window else{
        return
    }
    //window.titleVisibility = .hidden
    //window.titlebarAppearsTransparent = true
    window.isOpaque = false
    window.backgroundColor = NSColor.green

    window.standardWindowButton(.zoomButton)?.isHidden = true
    window.standardWindowButton(.closeButton)?.isHidden = true
    window.standardWindowButton(.miniaturizeButton)?.isHidden = true
}

