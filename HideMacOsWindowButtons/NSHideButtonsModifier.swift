//
//  NSHideButtonsModifier.swift
//  HideMacOsWindowButtons
//
//  Created by ing.conti on 10/05/23.
//

import AppKit
import SwiftUI



/*
#if os(macOS)

// The notification we'll send when a shake gesture happens.
extension UIDevice {
    static let deviceDidShakeNotification = Notification.Name(rawValue: "deviceDidShakeNotification")
}


//  Override the default behavior of shake gestures to send our notification instead.
extension NSWindow {
    
    var canBecomeKey: Bool {
        get {
            print("AAA")
            return true
        }
    }

}
#endif


// A view modifier that detects shaking and calls a function of our choosing.
struct DeviceShakeViewModifier: ViewModifier {
    let action: () -> Void

    func body(content: Content) -> some View {
        content
#if os(iOS)
            .onAppear()
            .onReceive(NotificationCenter.default.publisher(for: UIDevice.deviceDidShakeNotification)) { _ in
                action()
            }
#endif
    }

}

 
 
// A View extension to make the modifier easier to use.
// will be never called on macOs
public extension View {
    func onShake(perform action: @escaping () -> Void) -> some View {
        self.modifier(DeviceShakeViewModifier(action: action))
    }
}
*/


/* usage:

struct ContentView: View {
    var body: some View {
        Text("Shake me!")
            .onShake {
                print("Device shaken!")
            }
    }
}

 */
 



struct MyModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(lineWidth: 1)
                    .fill(.red)
            )
    }
}
