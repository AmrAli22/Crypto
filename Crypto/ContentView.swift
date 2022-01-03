//
//  ContentView.swift
//  Crypto
//
//  Created by Amr Ali on 03/01/2022.
//

import SwiftUI

struct CoinListView: View {
    
    private let viewModel = CoinListViewModel()
    
    var body: some View {
        Text("Hello, world!")
            .onAppear {
                self.viewModel.fetchCoins()
            }
    }
}

struct CoinListView_Previews: PreviewProvider {
    static var previews: some View {
        CoinListView()
    }
}


