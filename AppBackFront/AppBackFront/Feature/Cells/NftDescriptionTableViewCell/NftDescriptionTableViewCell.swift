//
//  NftDescriptionTableViewCell.swift
//  AppBackFront
//
//  Created by Caio Fabrini on 21/12/22.
//

import UIKit

class NftDescriptionTableViewCell: UITableViewCell {
    
    static let identifier: String = String(describing: NftDescriptionTableViewCell.self)
    
    private lazy var screen: NftDescriptionTableViewCellScreen = {
        let view = NftDescriptionTableViewCellScreen()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addViews()
        configConstraits()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        contentView.addSubview(screen)
    }
    
    private func configConstraits() {
        NSLayoutConstraint.activate([
            screen.topAnchor.constraint(equalTo: topAnchor),
            screen.leadingAnchor.constraint(equalTo: leadingAnchor),
            screen.trailingAnchor.constraint(equalTo: trailingAnchor),
            screen.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    public func setupCell(id: Int, title: String, description: String) {
        screen.idLabel.text = "#\(id)"
        screen.titleLabel.text = title
        screen.descriptionLabel.text = description
    }
    
    
}
