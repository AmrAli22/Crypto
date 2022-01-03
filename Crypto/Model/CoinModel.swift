//
//  CoinModel.swift
//  Crypto
//
//  Created by Amr Ali on 03/01/2022.
//

import Foundation
    
struct Coin : Decodable {
    let name   : String
    let price  : String
}

struct CryptoData : Decodable {
    let coins  : [Coin]
}

struct CryptoDataContainer : Decodable {
    let status : String
    let data   : CryptoData
}
