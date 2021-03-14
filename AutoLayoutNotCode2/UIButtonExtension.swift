//
//  UIButtonExtension.swift
//  AutoLayoutNotCode2
//
//  Created by Pham Toan on 14/03/2021.
//

import Foundation
import UIKit

extension UIButton {
    convenience init(name : String , superStackView: UIStackView){
        self.init()
        self.setTitle(name, for: .normal)
        self.backgroundColor = UIColor(221, 221, 221, 1)
        self.setTitleColor(.white, for: .normal)
        self.translatesAutoresizingMaskIntoConstraints = false;
        superStackView.addArrangedSubview(self)
        self.heightAnchor.constraint(equalTo: superStackView.heightAnchor, multiplier: 1).isActive = true
        self.layer.cornerRadius = 10
    }
}
