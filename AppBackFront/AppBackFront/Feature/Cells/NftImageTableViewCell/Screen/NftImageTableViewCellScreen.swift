//
//  NftImageTableViewCellScreen.swift
//  AppBackFront
//
//  Created by Caio Fabrini on 21/12/22.
//

import UIKit

protocol NftImageTableViewCellScreenDelegate: AnyObject {
    func tappedCloseButton()
    func tappedMagnifyingGlassButton()
}

class NftImageTableViewCellScreen: UIView {
    
    private weak var delegate: NftImageTableViewCellScreenDelegate?
    
    public func delegate(delegate: NftImageTableViewCellScreenDelegate?) {
        self.delegate = delegate
    }

    lazy var nftImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
        imageView.tintColor = .white
        return imageView
    }()
    
    lazy var closeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor (red: 187/255, green: 187/255, blue: 187/255, alpha: 1)
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.tintColor = .white
        button.setImage(UIImage(systemName: "xmark"), for: .normal)
        button.addTarget(self, action: #selector(tappedCloseButton), for: .touchUpInside)
        return button
    }()
    
    @objc func tappedCloseButton() {
        delegate?.tappedCloseButton()
    }
    
    lazy var magnifyingGlassButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor (red: 187/255, green: 187/255, blue: 187/255, alpha: 1)
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.tintColor = .white
        button.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        button.addTarget(self, action: #selector(tappedMagnifyingGlassButton), for: .touchUpInside)
        return button
    }()
    
    @objc func tappedMagnifyingGlassButton() {
        delegate?.tappedMagnifyingGlassButton()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        configConstraints()
    }
    
    private func addViews() {
        addSubview(nftImageView)
        addSubview(closeButton)
        addSubview(magnifyingGlassButton)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            nftImageView.topAnchor.constraint(equalTo: topAnchor),
            nftImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            nftImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            nftImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            closeButton.topAnchor.constraint(equalTo: nftImageView.topAnchor, constant: 30),
            closeButton.trailingAnchor.constraint(equalTo: nftImageView.trailingAnchor, constant: -20),
            closeButton.heightAnchor.constraint(equalToConstant: 35),
            closeButton.widthAnchor.constraint(equalToConstant: 35),
            
            magnifyingGlassButton.bottomAnchor.constraint(equalTo: nftImageView.bottomAnchor, constant: -30),
            magnifyingGlassButton.trailingAnchor.constraint(equalTo: nftImageView.trailingAnchor, constant: -20),
            magnifyingGlassButton.heightAnchor.constraint(equalToConstant: 35),
            magnifyingGlassButton.widthAnchor.constraint(equalToConstant: 35),
        ])
    }
     
    
}
