//
//  UIStackViewExtension.swift
//  AutoLayoutNotCode2
//
//  Created by Pham Toan on 14/03/2021.
//

import Foundation
import  UIKit


extension UIStackView  {
    
    func changeBackGroundColor(color:UIColor){
        let backgroundLayer = CAShapeLayer()
        self.layer.insertSublayer(backgroundLayer, at: 0)
        backgroundLayer.path = UIBezierPath(rect: self.bounds).cgPath
        backgroundLayer.fillColor = color.cgColor
    }
    
}
