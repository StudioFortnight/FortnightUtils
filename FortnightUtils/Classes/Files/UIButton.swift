//
//  UIButton.swift
//  FortnightUtils
//
//  Created by Andrea Toso on 30/01/2019.
//

import UIKit

extension UIButton {
    
    /**
     Returns system button with specified parameters.
     
     - parameter title: Button title (optional).
     - parameter image: Button image (optional).
     - parameter titleColor: Button title color (optional). Default = white.
     - parameter font: Button font (optional).
     - parameter target: Button target (optional).
     - parameter selector: Button selector (optional).
     */
    static public func systemButton(title: String? = nil, image: UIImage? = nil, titleColor: UIColor? = .white, font: UIFont? = nil, target: Any? = nil, selector: Selector? = nil) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setImage(image?.withRenderingMode(.alwaysOriginal), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.setTitleColor(titleColor, for: .normal)
        button.titleLabel?.font = font
        if let selector = selector {
            button.addTarget(target, action: selector, for: .touchUpInside)
        }
        return button
    }
    
}
