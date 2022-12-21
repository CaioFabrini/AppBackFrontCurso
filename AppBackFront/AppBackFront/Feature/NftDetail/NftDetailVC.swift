//
//  NftDetailVC.swift
//  AppBackFront
//
//  Created by Caio Fabrini on 21/12/22.
//

import UIKit

class NftDetailVC: UIViewController {
    
    private var screen: NftDetailScreen?
    private let viewModel: NftDetailViewModel
    
    override func loadView() {
        screen = NftDetailScreen()
        view = screen
    }
    
    required init(nft: Nft) {
        viewModel = NftDetailViewModel(nft: nft)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.configTableViewProtocols(delegate: self, dataSource: self)
    }
    
}

extension NftDetailVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NftImageTableViewCell.identifier, for: indexPath) as? NftImageTableViewCell
        cell?.setupCell(urlImage: viewModel.nftImage)
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
}

