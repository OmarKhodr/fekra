//
//  TextViewController.swift
//  Fekra
//
//  Created by Omar Khodr on 2/6/21.
//

import UIKit

class TextViewController: UIViewController {
    
    private var selectedBlock: Int = 0
    
    private enum Section: Int {
        case main
    }
    
    private var tableView: UITableView!
    private var dataSource: UITableViewDiffableDataSource<Section, TextBlock>!
    
    override func loadView() {
        super.loadView()
        configureHierarchy()
        configureDataSource()
    }

}


// MARK: Hierarchy
extension TextViewController {
    private func configureHierarchy() {
        configureNavItem()
        
        tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(TextBlockCell.self, forCellReuseIdentifier: TextBlockCell.reuseIdentifier)
        tableView.separatorStyle = .none
        tableView.backgroundColor = .systemBlue
        
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    private func configureNavItem() {
        view.backgroundColor = .systemBackground
        navigationItem.title = "Fekra"
    }
}

// MARK: Data Source
extension TextViewController {
    private func configureDataSource() {
        dataSource = UITableViewDiffableDataSource<Section, TextBlock>(tableView: tableView, cellProvider: {
            (tableView, indexPath, textBlock) -> UITableViewCell? in
            guard let cell = tableView.dequeueReusableCell(withIdentifier: TextBlockCell.reuseIdentifier,
                                                           for: indexPath) as? TextBlockCell else {
                fatalError("Wrong cell/reuse identifier!!!")
            }
            
            cell.textBlockView.text = textBlock.text
            cell.textBlockView.delegate = self
            return cell
        })
        
        applySnapshot()
    }
    
    private func applySnapshot() {
        var currentSnapshot = NSDiffableDataSourceSnapshot<Section, TextBlock>()
        
        currentSnapshot.appendSections([.main])
        currentSnapshot.appendItems(TextBlock.data)
        
        dataSource.apply(currentSnapshot, animatingDifferences: false)
    }
}

// MARK: Delegate
extension TextViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0 // You can set any other value, it's up to you
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected!")
    }
}

// MARK: TextView Delegate
extension TextViewController: UITextViewDelegate {
    func textViewDidChange(_ textView: UITextView) {
        
//        applySnapshot()
    }
}
