//
//  CoinListViewModels.swift
//  Crypto
//
//  Created by Amr Ali on 03/01/2022.
//

import Foundation

class CoinListViewModel : ObservableObject {
    
    @Published var coinViewModels = [CoinViewModel]()
    
}
