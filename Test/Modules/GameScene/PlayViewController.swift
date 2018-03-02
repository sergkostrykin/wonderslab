//
//  PlayViewController.swift
//  Test
//
//  Created by Sergiy Kostrykin on 3/2/18.
//  Copyright © 2018 Sergiy Kostrykin. All rights reserved.
//

import UIKit
class PlayViewController: UIViewController {
    
    let results: Int = 999

    //MARK: - Outlets
    @IBOutlet weak var selectBipView: UIView!
    
    @IBOutlet weak var selectBopView: UIView!
    
    @IBOutlet weak var bipTextField: UITextField!
    
    @IBOutlet weak var bopTextField: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        selectBipView.borderColor(.colorPurple)
        selectBopView.borderColor(.colorBlue)
        tableView.register(UINib.init(nibName: "NumbersTableViewCell", bundle: nil), forCellReuseIdentifier: "NumbersTableViewCell")

    }
}

extension PlayViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let char = string.cString(using: String.Encoding.utf8)!
        let isBackSpace = strcmp(char, "\\b") == -92
        
        if isBackSpace {
            return true
        } else {
            textField.text = string
            if textField == bipTextField {
                bopTextField.becomeFirstResponder()
            } else {
                textField.resignFirstResponder()
                tableView.reloadData()
            }
            return false
        }
    }
}

extension PlayViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return results
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NumbersTableViewCell") as! NumbersTableViewCell
        let number: Int = indexPath.row + 1
        let isBip: Bool = number % (Int(bipTextField.text ?? "") ?? 0) == 0
        let isBop: Bool = number % (Int(bopTextField.text ?? "") ?? 0) == 0
        var result: String = ""
        if isBip && isBop {
            result = "BipBop"
        } else if isBip {
            result = "Bip"
        } else if isBop {
            result = "Bop"
        } else {
            result = "\(number)"
        }
        cell.numberTextLabel.text = result
        return cell
    }
}
