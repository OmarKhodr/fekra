//
//  TextViewController.swift
//  Fekra
//
//  Created by Omar Khodr on 2/4/21.
//

import UIKit

class TextViewController: UIViewController {
    
    let textView = UITextView()
    
    override func loadView() {
        super.loadView()
        view.backgroundColor = .systemBackground
        configureTextView()
    }
    
}

extension TextViewController {
    private func configureTextView() {
        // Do not create constraints automatically from autoresizing mask, set them up manually
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        textView.backgroundColor = .systemGray6
        
        // Corner radius
        textView.layer.masksToBounds = true
        textView.layer.cornerRadius = 32
        
        // Padding for the text inside the view
        textView.contentInset = UIEdgeInsets(top: 20,
                                             left: 20,
                                             bottom: 20,
                                             right: 20)
        
        view.addSubview(textView)
        NSLayoutConstraint.activate([
            textView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            textView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            textView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            textView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20)
        ])
    }
}
