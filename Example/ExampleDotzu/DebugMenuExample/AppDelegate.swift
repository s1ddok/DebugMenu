//
//  AppDelegate.swift
//  ExampleDebugMenu
//
//  Created by Remi Robert on 16/05/2017.
//  Copyright © 2017 Remi Robert. All rights reserved.
//

import UIKit
import DebugMenu

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        DebugMenu.sharedManager.enable()
        return true
    }
}
