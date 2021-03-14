//
//  UILabelExtension.swift
//  AutoLayoutNotCode2
//
//  Created by Pham Toan on 14/03/2021.
//

import Foundation

import UIKit

extension UILabel {
    convenience init(text : String? , fontSize : CGFloat , parentStackView:UIStackView){
        self.init()
        self.translatesAutoresizingMaskIntoConstraints = false
        self.text = text
        self.font = self.font?.withSize(fontSize)
        parentStackView.addArrangedSubview(self)
    }
}
