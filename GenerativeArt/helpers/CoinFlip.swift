//
//  CoinFlip.swift
//  GenerativeArt
//
//  Created by Morgan Harris-Stoertz on 2023-10-24.
//

import Foundation

enum Coin: Int {
    case heads = 1
    case tails = 2
    
    static func flip() -> Coin {
        let decision = Bool.random()
        
        if decision == true {
            return .heads
        } else {
            return .tails
        }
    }
}
