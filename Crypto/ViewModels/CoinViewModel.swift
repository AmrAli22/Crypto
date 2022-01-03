//
//  CoinViewModel.swift
//  Crypto
//
//  Created by Amr Ali on 03/01/2022.
//

import Foundation
    
struct CoinViewModel {
    private let coin : Coin
    
    private var name : String {
        return coin.name
    }
    
    private var price : String {
        //MARK: - TODO FORMATTING
        return coin.price
    }
}

