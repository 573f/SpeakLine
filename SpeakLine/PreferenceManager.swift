//
//  PreferenceManager.swift
//  SpeakLine
//
//  Created by Stephen Skubik-Peplaski on 9/21/15.
//  Copyright © 2015 Stephen Skubik-Peplaski. All rights reserved.
//

import Cocoa

private let activeVoiceKey = "activeVoice"
private let activeTextKey  = "activeText"

class PreferenceManager {
    private let userDefaults = NSUserDefaults.standardUserDefaults()
    
    var activeVoice: String? {
        set (newActiveVoice) {
            userDefaults.setObject(newActiveVoice, forKey: activeVoiceKey)
        }
        get {
            return userDefaults.objectForKey(activeVoiceKey) as? String
        }
    }
    
    var activeText: String? {
        set (newActiveText) {
            userDefaults.setObject(newActiveText, forKey: activeTextKey)
        }
        get {
            return userDefaults.objectForKey(activeTextKey) as? String
        }
    }
    
    init() {
        registerDefaultPreferences()
    }
    
    func registerDefaultPreferences() {
        let defaults = [
            activeVoiceKey: NSSpeechSynthesizer.defaultVoice(),
            activeTextKey: "Able was I ere I saw Elba."
        ]
        userDefaults.registerDefaults(defaults)
    }
}