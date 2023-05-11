//
//  ContentView.swift
//  HideMacOsWindowButtons
//
//  Created by ing.conti on 10/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .onReceive(NotificationCenter.default.publisher(for: NSApplication.didBecomeActiveNotification),
                   perform: fixButtons(notif:))

    }

    
    func fixButtons( notif: Notification) {
        customize(window: NSApp.mainWindow)
    }
    
}


