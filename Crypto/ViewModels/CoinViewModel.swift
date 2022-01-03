//
//  CoinViewModel.swift
//  Crypto
//
//  Created by Amr Ali on 03/01/2022.
//

import Foundation
    
struct CoinViewModel : Hashable {
    
    init(_ coin: Coin) {
        self.coin = coin
    }
    
    private let coin : Coin
    
     var name : String {
        return coin.name
    }
    
     var formattedPrice : String {
        //MARK: - FORMATTING
         
         let numberFormatter = NumberFormatter()
         numberFormatter.numberStyle = .currency
         
         guard let price = Double(coin.price) , let formattedPrice = numberFormatter.string(from: NSNumber(value: price)) else { return "" }
         
        return formattedPrice
    }
}

