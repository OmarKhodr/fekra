//
//  TextBlockCell.swift
//  Fekra
//
//  Created by Omar Khodr on 2/4/21.
//

import UIKit

class TextBlockCell: UITableViewCell {
    static let reuseIdentifier = "textBlockCell"
    
    var textBlock: TextBlock! = nil {
        didSet {
            configureData()
        }
    }
    let textBlockView = UITextView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureHierarchy()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension TextBlockCell {
    private func configureHierarchy() {
        // Do not create constraints automatically from autoresizing mask, set them up manually
        textBlockView.translatesAutoresizingMaskIntoConstraints = false
        
        textBlockView.backgroundColor = .systemGreen
        
        // Padding for the text inside the view
//        textBlockView.contentInset = UIEdgeInsets(top: 20,
//                                                  left: 20,
//                                                  bottom: 20,
//                                                  right: 20)
        
        // Disabling scrolling makes it so that text view dynamically grows and shrinks along with the text
        textBlockView.isScrollEnabled = false
        
        textBlockView.delegate = self
        
        contentView.addSubview(textBlockView)
        
        // Pin sides of text view to the content view (with padding)
        NSLayoutConstraint.activate([
            textBlockView.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 20),
            textBlockView.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            textBlockView.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            textBlockView.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor, constant: -20),
//            textBlockView.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
}

extension TextBlockCell {
    private func configureData() {
        textBlockView.text = textBlock.text
    }
}

extension TextBlockCell: UITextViewDelegate {
    func textViewDidChange(_ textView: UITextView) {
        layoutIfNeeded()
    }
}
