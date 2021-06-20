//
//  OpenMarketItemToPost.swift
//  OpenMarket
//
//  Created by James on 2021/06/18.
//

import Foundation

enum OpenMarketItemToPost {
    case title, price, currency, stock, discountedPrice, password
    
    var placeholder: String {
        switch self {
        case .title:
            return "상품명"
        case .currency:
            return "화폐"
        case .price:
            return "가격"
        case .discountedPrice:
            return "(optional) 할인 가격"
        case .stock:
            return "수량"
        case .password:
            return "비밀번호"
        }
    }
    
    var key: String {
        switch self {
        case .title:
            return "title"
        case .currency:
            return "currency"
        case .price:
            return "price"
        case .discountedPrice:
            return "discountedPrice"
        case .stock:
            return "stock"
        case .password:
            return "password"
        }
    }
}
