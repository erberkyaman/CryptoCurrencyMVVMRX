//
//  Webservice.swift
//  CryptoRxMVVM
//
//  Created by Erberk Yaman on 17.09.2024.
//

import Foundation

enum CryptoError : Error {
    case serverError
    case parsingError
}

class Webservice {
    
    func checkCurrencies(url: URL, completion: @escaping (Result<[CryptoModel],CryptoError>) -> () ) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let _ = error {
                completion(.failure(.serverError))
            } else if let data = data {
                let cryptoList = try? JSONDecoder().decode([CryptoModel].self, from: data)
                if let cryptoList = cryptoList {
                    completion(.success(cryptoList))
                }
            }else {
                completion(.failure(.parsingError))
            }
        }.resume()
    }
}
