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
        return 1
    }
    
    public var nftImage: String {
        return nft.nftImage ?? ""
    }
    
    
    
    
    
    
}
