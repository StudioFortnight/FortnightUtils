//
//  UITextView.swift
//  FortnightUtils
//
//  Created by Andrea Toso on 30/01/2019.
//

import UIKit

extension UITextView {
    
    /**
     Set textview line height.
     
     - parameter value: The value of the line height.
     - parameter alignment: The alignment of the textview.
     */
    public func setLineHeight(value: CGFloat, alignment: NSTextAlignment = .left) {
        guard let labelText = self.text else { return }
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = value
        paragraphStyle.alignment = alignment
        
        let attributedString: NSMutableAttributedString
        if let labelattributedText = self.attributedText {
            attributedString = NSMutableAttributedString(attributedString: labelattributedText)
        } else {
            attributedString = NSMutableAttributedString(string: labelText)
        }
        
        attributedString.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSMakeRange(0, attributedString.length))
        
        self.attributedText = attributedString
    }
    
}
