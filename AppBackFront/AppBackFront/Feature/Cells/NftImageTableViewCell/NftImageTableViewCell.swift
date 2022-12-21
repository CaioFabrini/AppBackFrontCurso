//
//  NftImageTableViewCell.swift
//  AppBackFront
//
//  Created by Caio Fabrini on 21/12/22.
//

import UIKit
import AlamofireImage

class NftImageTableViewCell: UITableViewCell {
    
    static let identifier: String = String(describing: NftImageTableViewCell.self)
    
    private lazy var screen: NftImageTableViewCellScreen = {
        let view = NftImageTableViewCellScreen()
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
    
    public func setupCell(urlImage: String) {
        guard let url: URL = URL(string: urlImage) else { return }
        screen.nftImageView.af.setImage(withURL: url)
    }
    
    
}
