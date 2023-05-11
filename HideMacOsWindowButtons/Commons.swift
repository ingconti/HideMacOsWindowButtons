//
//  Commons.swift
//  HideMacOsWindowButtons
//
//  Created by ing.conti on 11/05/23.
//


//let USE_APP_DELEGATE = true
let USE_APP_DELEGATE = false

#if os(macOS) || targetEnvironment(macCatalyst)
import AppKit
#else
import UIKit
#endif


#if os(macOS) || targetEnvironment(macCatalyst)
let ActiveNotif = NSApplication.didBecomeActiveNotification
typealias Window = NSWindow
#else
let ActiveNotif = Notification.Name("fake")
typealias Window = UIWindow
#endif


#if os(macOS) || targetEnvironment(macCatalyst)
#else
#endif


fileprivate var count = 0

func customize(window: Window?) {
#if os(macOS) || targetEnvironment(macCatalyst)

    count+=1
    
    print(USE_APP_DELEGATE ? "using App delegate" : "using notification", count)
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

