//
//  CoinListViewModels.swift
//  Crypto
//
//  Created by Amr Ali on 03/01/2022.
//

import Foundation
import Combine

class CoinListViewModel : ObservableObject {
    
    private let cryptoService = CryptoService()
    
    @Published var coinViewModels = [CoinViewModel]()
    
    var cancellable: AnyCancellable?
    
    func fetchCoins() {
        cancellable = cryptoService.fetchCoins().sink(receiveCompletion: { _ in
            
        }, receiveValue: { cryptoConatiner in
            self.coinViewModels = cryptoConatiner.data.coins.map { CoinViewModel($0) }
            print("SELF :_ \(self.coinViewModels)")
        })
    }
}
