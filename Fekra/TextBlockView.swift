//
//  TextBlockView.swift
//  Fekra
//
//  Created by Omar Khodr on 2/6/21.
//

import UIKit

class TextBlockView: UITextView {
    
    var heightConstraint: NSLayoutConstraint!

    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: .zero, textContainer: nil)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension TextBlockView {
    private func configure() {
        backgroundColor = .systemGray6
        
        // Padding for the text inside the view
        contentInset = UIEdgeInsets(top: 20,
                                    left: 20,
                                    bottom: 20,
                                    right: 20)
        
        // Disabling scrolling makes it so that text view dynamically grows and shrinks along with the text
        isScrollEnabled = false
    }
}

extension TextBlockView: UITextViewDelegate {
    
}
