//
//  NFTData.swift
//  AppBackFront
//
//  Created by Caio Fabrini on 20/12/22.
//

import Foundation

// MARK: - NFTData
struct NFTData: Codable {
    var logoImage: LogoImage?
    var filterListNft: [FilterNft]?
    var nftList: [Nft]?

    enum CodingKeys: String, CodingKey {
        case logoImage = "logo_image"
        case filterListNft = "filter_nft"
        case nftList = "nft_list"
    }
}

// MARK: - FilterNft
struct FilterNft: Codable {
    var title: String?
    var id: Int?
    var isSelected: Bool?
}

// MARK: - LogoImage
struct LogoImage: Codable {
    var image: String?
}

// MARK: - Nft
struct Nft: Codable {
    var ownedBy: String?
    var price: String?
    var type: Int?
    var nftImage: String?
    var userName: String?
    var userImage: String?
    var nftPrice: Double?
    var nftID: Int?
    var nftNameImage, nftDescription: String?
    var titleLatestDeals: String?
    var latestDeals: [LatestDeal]?

    enum CodingKeys: String, CodingKey {
        case ownedBy = "owned_by"
        case price, type
        case nftImage = "nft_image"
        case userName = "user_name"
        case userImage = "user_image"
        case nftPrice = "nft_price"
        case nftID = "nft_id"
        case nftNameImage = "nft_name_image"
        case nftDescription = "nft_description"
        case titleLatestDeals = "title_latest_deals"
        case latestDeals = "latest_deals"
    }
}

// MARK: - LatestDeal
struct LatestDeal: Codable {
    var userName: String?
    var userImage: String?
    var nftPrice: Double?
    var lastAccess: String?

    enum CodingKeys: String, CodingKey {
        case userName = "user_name"
        case userImage = "user_image"
        case nftPrice = "nft_price"
        case lastAccess = "last_access"
    }
}


