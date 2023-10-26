//
//  TileView.swift
//  GenerativeArt
//
//  Created by Morgan Harris-Stoertz on 2023-10-24.
//

import SwiftUI


//MARK: stored properties

//determine diagonal direction
let flipOne = Coin.flip()

//determine the top and bottom colors
let flipTwo = Coin.flip()



//choose my markers
let markerOne = Color.indigo
let markerTwo = Color.mint

//flip for color
let flipForColor = Coin.flip()

//MARK: Computed properties

//set colors based on the coin flip
var colorOne: Color{
    return flipForColor == .heads ? markerOne : markerTwo
}

var colorTwo: Color{
    return flipForColor == .heads ? markerTwo : markerOne
    }

struct TileView: View {
    var body: some View {
        ZStack {
            if flipOne == .heads {
                TriangleTopRight()
                //make shape a square
                    .stroke(.black)
                    .fill(flipTwo == .heads ? colorOne : .clear)
                    .aspectRatio(1.0, contentMode: .fit)
                    
                
                TriangleBottomLeft()
                    .stroke(.black)
                    .fill(flipTwo == .tails ? colorOne : .clear )
                    .aspectRatio(1.0, contentMode: .fit)
            } else {
                
                TriangleTopLeft()
                //make shape a square
                    .stroke(.black)
                    .fill(flipTwo == .heads ? colorOne: .clear)
                    .aspectRatio(1.0, contentMode: .fit)
                
                TriangleBottomRight()
                    .stroke(.black)
                    .fill(flipTwo == .tails ? colorOne : .clear)
                    .aspectRatio(1.0, contentMode: .fit)
                
            }
            
           
            
        }
        .padding()
    }
}

#Preview {
    TileView()
}
