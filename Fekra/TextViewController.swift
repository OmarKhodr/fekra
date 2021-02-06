//
//  TextViewController.swift
//  Fekra
//
//  Created by Omar Khodr on 2/6/21.
//

import UIKit

class TextViewController: UIViewController {
    
    private enum Section: Int {
        case main
    }
    
    private struct TextBlock: Hashable, Identifiable {
        let id: UUID = UUID()
        let text: String
    }
    
    var collectionView: UICollectionView!
    
    override func loadView() {
        super.loadView()
        configureHierarchy()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}


// MARK: Hierarchy
extension TextViewController {
    private func configureHierarchy() {
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: createLayout())
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(collectionView)
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
    }
}

// MARK: Collection View Compositional Layout
extension TextViewController {
    private func createLayout() -> UICollectionViewCompositionalLayout {
        
    }
}
