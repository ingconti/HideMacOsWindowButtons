//
//  Commons.swift
//  HideMacOsWindowButtons
//
//  Created by ing.conti on 11/05/23.
//


//let USE_APP_DELEGATE = true
let USE_APP_DELEGATE = false

import AppKit


let ActiveNotif = NSApplication.didBecomeActiveNotification
typealias Window = NSWindow



fileprivate var count = 0

func customize(window: Window?) {

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

}

