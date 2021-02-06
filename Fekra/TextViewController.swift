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
    
    private var collectionView: UICollectionView!
    private var dataSource: UICollectionViewDiffableDataSource<Section, TextBlock>!
    
    override func loadView() {
        super.loadView()
        configureHierarchy()
        configureDataSource()
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

// MARK: Compositional Layout
extension TextViewController {
    // Create compositional layout
    private func createLayout() -> UICollectionViewCompositionalLayout {
        let layout = UICollectionViewCompositionalLayout(sectionProvider: createSection(sectionIndex:layoutEnvironment:))
        return layout
    }
    
    // Given a section index, provides the appropriate section to the layout
    private func createSection(sectionIndex: Int,
                               layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? {
        var configuration = UICollectionLayoutListConfiguration(appearance: .plain)
        configuration.showsSeparators = false
        configuration.headerMode = .none
        
        let section = NSCollectionLayoutSection.list(using: configuration, layoutEnvironment: layoutEnvironment)
        return section
    }
}

// MARK: Data Source
extension TextViewController {
    private func configureDataSource() {
        
    }
}
