//
//  UITextFieldExtension.swift
//  AutoLayoutNotCode2
//
//  Created by Pham Toan on 14/03/2021.
//

import Foundation
import UIKit

extension UITextField {
    convenience init(placeholder: String? , parentStack : UIStackView) {
        self.init()
        self.translatesAutoresizingMaskIntoConstraints = false;
//        self.borderStyle = .roundedRect
        self.placeholder = placeholder
//        self.frame
        self.frame.size.height = 25
        self.frame.size.width = 100

        self.layer.borderWidth = 1
        self.layer.cornerRadius = 5
        self.layer.borderColor = UIColor.lightGray.cgColor
        
        
        parentStack.addArrangedSubview(self)
    }
}
