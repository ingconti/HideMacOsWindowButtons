//
//  Commons.swift
//  HideMacOsWindowButtons
//
//  Created by ing.conti on 11/05/23.
//

import AppKit

#if os(macOS) || targetEnvironment(macCatalyst)
let ActiveNotif = Notification.Name("fake")
typealias Window = NSWindow
//let ActiveNotif = NSApplication.didBecomeActiveNotification
#else
let ActiveNotif = "fake"
typealias Window = UIWindow
#endif


#if os(macOS) || targetEnvironment(macCatalyst)
#else
#endif


func customize(window: Window?) {
#if os(macOS) || targetEnvironment(macCatalyst)

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

#else

#endif

}

