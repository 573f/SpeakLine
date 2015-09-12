//
//  AppDelegate.swift
//  SpeakLine
//
//  Created by Stephen Skubik-Peplaski on 9/12/15.
//  Copyright © 2015 Stephen Skubik-Peplaski. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var mainWindowController: MainWindowController?
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Create a window controller
        let mainWindowController = MainWindowController()
        // Put the window on the screen
        mainWindowController.showWindow(self)
        
        // set the property to point to the window controller
        self.mainWindowController = mainWindowController
    }
    
}

