//
//  TileView.swift
//  GenerativeArt
//
//  Created by Morgan Harris-Stoertz on 2023-10-24.
//

import SwiftUI


//MARK: stored properties
let flipOne = Coin.flip()

//choose my markers
let markerOne = Color.indigo
let markerTwo = Color.mint

//flip for color
let flipForColor = Coin.flip()

//MARK: Computed properties

//set colors based on the coin flip
var colorOne: Color{
    if flipForColor == .heads {
        return markerOne
    } else {
        return markerTwo
    }
}

var colorTwo: Color{
    if flipForColor == .heads {
            return markerTwo
        } else {
            return markerOne
        }
    }

struct TileView: View {
    var body: some View {
        ZStack {
            if flipOne == .heads {
                TriangleTopRight()
                //make shape a square
                    .fill(colorOne)
                    .aspectRatio(1.0, contentMode: .fit)
                    
                
                TriangleBottomLeft()
                    .fill(colorTwo)
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
