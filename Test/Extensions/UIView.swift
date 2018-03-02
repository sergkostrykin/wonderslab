//
//  UIView.swift
//  Test
//
//  Created by Sergiy Kostrykin on 3/2/18.
//  Copyright © 2018 Sergiy Kostrykin. All rights reserved.
//

import UIKit
extension UIView {
    func borderColor(_ color: UIColor) {
        self.layer.borderColor = color.cgColor
    }
}
