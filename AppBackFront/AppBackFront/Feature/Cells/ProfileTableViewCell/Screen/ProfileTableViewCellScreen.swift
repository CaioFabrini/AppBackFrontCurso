//
//  ProfileTableViewCellScreen.swift
//  AppBackFront
//
//  Created by Caio Fabrini on 28/12/22.
//

import UIKit

class ProfileTableViewCellScreen: UIView {
    
    lazy var userImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "user")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    lazy var editImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "pencil")
        imageView.contentMode = .scaleAspectFill
        imageView.tintColor = .white
        return imageView
    }()
    
    lazy var closeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.setTitleColor(UIColor(red: 207/255, green: 0/255, blue: 192/255, alpha: 1), for: .normal)
        button.layer.borderWidth = 1.7
        button.layer.borderColor = UIColor(red: 207/255, green: 0/255, blue: 192/255, alpha: 1).cgColor
        button.addTarget(self, action: #selector(tappedCloseButton), for: .touchUpInside)
        return button
    }()
    
    @objc func tappedCloseButton() {
        print(#function)
    }
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.text = "Caio Fabrini"
        return label
    }()
    
    lazy var profileAtLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 255/255, green: 152/255, blue: 255/255, alpha: 1)
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.text = "@userProfile"
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        addViews()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        addSubview(userImageView)
        addSubview(editImageView)
        addSubview(closeButton)
        addSubview(nameLabel)
        addSubview(profileAtLabel)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
        
            userImageView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            userImageView.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            userImageView.heightAnchor.constraint(equalToConstant: 130),
            userImageView.widthAnchor.constraint(equalToConstant: 130),
            
            editImageView.bottomAnchor.constraint(equalTo: userImageView.bottomAnchor),
            editImageView.leadingAnchor.constraint(equalTo: userImageView.trailingAnchor, constant: -25),
            editImageView.heightAnchor.constraint(equalToConstant: 25),
            editImageView.widthAnchor.constraint(equalToConstant: 25),
            
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 50),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
            profileAtLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor,constant: 5),
            profileAtLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -25),
            
            closeButton.topAnchor.constraint(equalTo: userImageView.bottomAnchor,constant: 60),
            closeButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            closeButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            closeButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
}
