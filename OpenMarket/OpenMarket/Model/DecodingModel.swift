//
//  DecodingModel.swift
//  OpenMarket
//
//  Created by James on 2021/05/31.
//

import Foundation

struct OpenMarketItemList: Decodable {
    var page: Int
    var items: [Item]
}

struct Item: Decodable {
    var id: Int
    var title: String
    var price: Int
    var currency: String
    var stock: Int
    var discountedPrice: Int?
    var thumbnails: [String]
    var registrationDate: Int
    
    private enum CodingKeys: String, CodingKey {
        case id, title, price, currency, stock, thumbnails
        case discountedPrice = "discounted_price"
        case registrationDate = "registration_date"
    }
}
