//
//  AppDelegate.swift
//  Test
//
//  Created by Sergiy Kostrykin on 3/2/18.
//  Copyright © 2018 Sergiy Kostrykin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    var rootWireframe: RootWireframe?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        self.rootWireframe = RootWireframe(window: self.window)
        
        return true
    }
}
