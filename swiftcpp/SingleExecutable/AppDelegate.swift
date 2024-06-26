import Cocoa
import SwiftUI

class AppDelegate: NSObject, NSApplicationDelegate {

    private var window: NSWindow!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
        let contentView = ContentView()
        window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 480, height: 270),
            styleMask: [.miniaturizable, .closable, .resizable, .titled],
            backing: .buffered, defer: false)
        window.isReleasedWhenClosed = false
        window.center()
        window.title = "No Storyboard Window"
        window.contentView = NSHostingView(rootView: contentView)
        window.makeKeyAndOrderFront(nil)
    }
}