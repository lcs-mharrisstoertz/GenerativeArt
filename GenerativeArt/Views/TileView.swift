//
//  TileView.swift
//  GenerativeArt
//
//  Created by Morgan Harris-Stoertz on 2023-10-24.
//

import SwiftUI


//MARK: stored properties
let flipOne = Coin.flip()


//MARK: Computed properties

struct TileView: View {
    var body: some View {
        ZStack {
            if flipOne == .heads {
                TriangleTopRight()
                //make shape a square
                    .fill(.black)
                    .aspectRatio(1.0, contentMode: .fit)
                    
                
                TriangleBottomLeft()
                    .fill(.red)
                    .aspectRatio(1.0, contentMode: .fit)
            } else {
                
                TriangleTopLeft()
                //make shape a square
                    .fill(.black)
                    .aspectRatio(1.0, contentMode: .fit)
                
                TriangleBottomRight()
                    .fill(.red)
                    .aspectRatio(1.0, contentMode: .fit)
                
            }
            
           
            
        }
        .padding()
    }
}

#Preview {
    TileView()
}
