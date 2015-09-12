//
//  MainWindowController.swift
//  SpeakLine
//
//  Created by Stephen Skubik-Peplaski on 9/12/15.
//  Copyright © 2015 Stephen Skubik-Peplaski. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {

    @IBOutlet weak var textField: NSTextField!
    @IBOutlet weak var speakButton: NSButton!
    @IBOutlet weak var stopButton: NSButton!
        
    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    override var windowNibName: String {
        return "MainWindowController"
    }
    
    // MARK: - Action Methods
    
    @IBAction func speakIt(sender: NSButton) {
        
        let string = textField.stringValue
        if string.isEmpty {
            print("The string from \(textField) is empty.")
        } else {
            print("The string is \"\(textField.stringValue)\"")
        }
    }
    
    @IBAction func stopIt(sender: NSButton) {
        print("stop button clicked")
    }
}
