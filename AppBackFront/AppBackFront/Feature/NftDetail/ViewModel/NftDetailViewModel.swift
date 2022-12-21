//
//  NftDetailViewModel.swift
//  AppBackFront
//
//  Created by Caio Fabrini on 21/12/22.
//

import UIKit

class NftDetailViewModel {

    private let nft: Nft
    
    init(nft: Nft) {
        self.nft = nft
    }
    
    public var numberOfRowsInSection: Int {
        return 2
    }
    
    public var nftImage: String {
        return nft.nftImage ?? ""
    }
    
    public var idNft: Int {
        return nft.nftID ?? 0
    }
    
    public var titleNft: String {
        return nft.nftNameImage ?? ""
    }
    
    public var nftDescription: String {
        return nft.nftDescription ?? ""
    }
    
    public func heightForRowAt(indexPath: IndexPath, width: CGFloat) -> CGFloat {
        switch NameCellNftDetail(rawValue: indexPath.row) {
        case .nftImage:
            return 400
        case .description:
            return nftDescription.height(withConstrainedWidth: width - 40, font: UIFont.systemFont(ofSize: 18)) + 89
        default:
            return 0
        }
    }
    
    
    
    
    
    
}
