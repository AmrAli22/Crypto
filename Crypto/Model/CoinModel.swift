//
//  CoinModel.swift
//  Crypto
//
//  Created by Amr Ali on 03/01/2022.
//

import Foundation
    
struct Coin {
    let name   : String
    let price  : String
}

struct CryptoData {
    let coins  : [Coin]
}

struct CryptoDataContainer {
    let status : String
    let data   : CryptoData
}
