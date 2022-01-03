//
//  CryptoServices.swift
//  Crypto
//
//  Created by Amr Ali on 03/01/2022.
//

import Foundation
final class CryptoService {
    
    var components: URLComponents {
        var components = URLComponents()
        components.scheme     = "https"
        components.host       = "api.coinranking.com"
        components.path       = "/v1/public/coins"
        components.queryItems = [
            URLQueryItem(name: "base", value: "USD"),
            URLQueryItem(name: "timePeriod", value: "24h")
        ]
        return components
    }
    
    
}
