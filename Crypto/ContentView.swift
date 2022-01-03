//
//  ContentView.swift
//  Crypto
//
//  Created by Amr Ali on 03/01/2022.
//

import SwiftUI
import Combine

struct CoinListView: View {
    
    @ObservedObject private var viewModel = CoinListViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.coinViewModels, id: \.self) { coinItem in
                Text(coinItem.name + "-" + coinItem.formattedPrice)
            }.onAppear() {
                self.viewModel.fetchCoins()
            }.navigationBarTitle("Coins")
        }
    }
}

struct CoinListView_Previews: PreviewProvider {
    static var previews: some View {
        CoinListView()
    }
}


