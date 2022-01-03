//
//  CoinViewModel.swift
//  Crypto
//
//  Created by Amr Ali on 03/01/2022.
//

import Foundation
    
struct CoinViewModel {
    
    init(_ coin: Coin) {
        self.coin = coin
    }
    
    private let coin : Coin
    
    private var name : String {
        return coin.name
    }
    
    private var price : String {
        //MARK: - TODO FORMATTING
        return coin.price
    }
}

