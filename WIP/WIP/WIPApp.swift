//
//  WIPApp.swift
//  WIP
//
//  Created by Marc Köhlbrugge on 6/27/23.
//

import SwiftUI

@main
struct WIPApp: App {
    @Environment(\.openURL) var openURL
    @State var currentNumber: String = "1"
    @State var atUsername: String = "@marc"
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        // circle.dashed
        MenuBarExtra(currentNumber, systemImage: "checkmark.square.fill") {
            
            Button(atUsername) {
                openURL(URL(string: "https://wip.co/" + atUsername)!)
            }.keyboardShortcut("o")
            
            Text("You shipped today.")
            Text("Current streak: 14")
            
            Divider()
            
            Button("New Todo…") {
                currentNumber = "ja"
            }.keyboardShortcut(" ", modifiers: [.control])
     
            Button("Projects") {
                currentNumber = "1"
            }.keyboardShortcut("1")
         
            Divider()
     
            Button("Preferences") {
                currentNumber = ","
            }.keyboardShortcut(",")

            Divider()

            Button("Quit") {
                NSApplication.shared.terminate(nil)
            }.keyboardShortcut("q")
            
        }
    }
}
