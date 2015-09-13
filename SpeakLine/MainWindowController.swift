//
//  MainWindowController.swift
//  SpeakLine
//
//  Created by Stephen Skubik-Peplaski on 9/12/15.
//  Copyright © 2015 Stephen Skubik-Peplaski. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController, NSSpeechSynthesizerDelegate {

    @IBOutlet weak var textField: NSTextField!
    @IBOutlet weak var speakButton: NSButton!
    @IBOutlet weak var stopButton: NSButton!
    
    let speechSynth = NSSpeechSynthesizer()
    var isStarted: Bool = false {
        didSet {
            updateButtons()
        }
    }

    override func windowDidLoad() {
        super.windowDidLoad()
        updateButtons()
        speechSynth.delegate = self
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
            speechSynth.startSpeakingString(string)
            isStarted = true
        }
    }
    
    @IBAction func stopIt(sender: NSButton) {
        speechSynth.stopSpeaking()
    }
    
    func updateButtons() {
        if isStarted {
            speakButton.enabled = false
            stopButton.enabled = true
        } else {
            speakButton.enabled = true
            stopButton.enabled = false
        }
    }
    
    // MARK: - NSSpeechSynthesizer Delegate Methods
    
    func speechSynthesizer(sender: NSSpeechSynthesizer, didFinishSpeaking finishedSpeaking: Bool) {
        isStarted = false
    }
}
