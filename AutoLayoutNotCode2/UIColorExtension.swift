//
//  UIColorExtension.swift
//  AutoLayoutNotCode2
//
//  Created by Pham Toan on 14/03/2021.
//

import Foundation
import UIKit

extension UIColor {
    convenience init(_ r : CGFloat, _ g : CGFloat ,_ b : CGFloat , _ a : CGFloat) {
        self.init(red: r / 255.0 , green : g / 255.0 , blue : b/255.0 , alpha : a)
    }
}
