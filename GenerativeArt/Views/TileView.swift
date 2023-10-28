//
//  TileView.swift
//  GenerativeArt
//
//  Created by Morgan Harris-Stoertz on 2023-10-24.
//

import SwiftUI

struct TileView: View {
    
    //MARK: stored properties

    //determine diagonal direction
    let flipOne = Coin.flip()

    //determine the top and bottom colors
    let flipTwo = Coin.flip()

    //determine final fill color
    let flipThree = Coin.flip()


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

    //final flip for determining remaining fill color
    var remainingTriangleFillColor: Color{
        if flipThree == . heads {
            return colorTwo
        } else {
            return .clear
        }
    }

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
                    .fill(flipTwo == .heads ? colorOne: remainingTriangleFillColor)
                    .aspectRatio(1.0, contentMode: .fit)
                
                TriangleBottomRight()
                    .stroke(.black)
                    .fill(flipTwo == .tails ? colorOne : remainingTriangleFillColor)
                    .aspectRatio(1.0, contentMode: .fit)
                
            }
            
           
            
        }
    }
}

#Preview {
    TileView()
}
