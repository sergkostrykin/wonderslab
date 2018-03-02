//
//  GameViewController.swift
//  Test
//
//  Created by Sergiy Kostrykin on 3/2/18.
//  Copyright © 2018 Sergiy Kostrykin. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    //MARK: - Outlets
    
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var explanationButton: UIButton!
    
    @IBOutlet weak var playView: UIView!
    
    @IBOutlet weak var explanationView: UIView!
    
    
    //MARK: - Actions
    
    @IBAction func playButtonClicked(_ sender: UIButton) {
        showPlayView()
    }
    
    @IBAction func explanationButtonClicked(_ sender: UIButton) {
        showExplanationView()
    }


    //MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIApplication.shared.isStatusBarHidden = false
        UIApplication.shared.statusBarStyle  = .lightContent
        showPlayView()
    }
    
    private func showPlayView() {
        playButton.isSelected = true
        explanationButton.isSelected = false
        playView.isHidden = false
        explanationView.isHidden = true
    }
    
    private func showExplanationView() {
        playButton.isSelected = false
        explanationButton.isSelected = true
        playView.isHidden = true
        explanationView.isHidden = false
    }


}
