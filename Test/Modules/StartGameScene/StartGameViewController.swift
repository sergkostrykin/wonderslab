//
//  StartGameViewController.swift
//  Test
//
//  Created by Sergiy Kostrykin on 3/2/18.
//  Copyright © 2018 Sergiy Kostrykin. All rights reserved.
//

import UIKit

class StartGameViewController: UIViewController {
    
    //MARK: - Outlets
    
    @IBOutlet weak var gradientView: UIView!
    
    //MARK: - Actions
    
    @IBAction func tapGestureRecognizerAction(_ sender: UITapGestureRecognizer) {
        showGameScene()
    }
    
    //MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIApplication.shared.isStatusBarHidden = true
        navigationController?.isNavigationBarHidden = true
        setupGradientView()
    }
    
    private func setupGradientView() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        gradientLayer.colors = [UIColor.colorBlue.cgColor, UIColor.colorPurple.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientView.layer.addSublayer(gradientLayer)
    }

    
    //MARK: - Navigation
    
    private func showGameScene() {
        let controller = RootWireframe.gameViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    
}
