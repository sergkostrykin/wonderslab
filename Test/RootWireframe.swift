//
//  RootWireframe.swift
//  Test
//
//  Created by Sergiy Kostrykin on 3/2/18.
//  Copyright © 2018 Sergiy Kostrykin. All rights reserved.
//

import UIKit
class RootWireframe: NSObject {
    
    //MARK: - Properties
    
    let window: UIWindow?
    
    
    //MARK: - Router
    
    class func startGameViewController() -> StartGameViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "StartGameViewController") as! StartGameViewController
        return controller
    }
    
    class func gameViewController() -> GameViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "GameViewController") as! GameViewController
        return controller
    }
    
    
    //MARK: - Init
    
    init? (window: UIWindow?) {
        self.window = window
        super.init()
        if window == nil {
            print("Screen Manager Error")
            return nil
        }

        window?.backgroundColor = .white
        showAppropriateView()
    }
    
    private func showAppropriateView() {
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! UINavigationController
        window?.rootViewController = controller
    }
}

