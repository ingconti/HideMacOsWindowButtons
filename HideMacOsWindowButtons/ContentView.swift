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
        // 2nd method:
        .onReceive(NotificationCenter.default.publisher(for: ActiveNotif),
                   perform: fixButtons(notif:))

    }
    
    func fixButtons( notif: Notification) {
        if !USE_APP_DELEGATE{
            customize(window: NSApp.mainWindow)
        }
    }
    
}


