//
//  TileView.swift
//  GenerativeArt
//
//  Created by Morgan Harris-Stoertz on 2023-10-24.
//

import SwiftUI


//MARK: stored properties
let flipOne = Int.random(in: 1...2)


//MARK: Computed properties

struct TileView: View {
    var body: some View {
        ZStack {
            if flipOne == 1 {
                TriangleTopRight()
                //make shape a square
                    .aspectRatio(1.0, contentMode: .fit)
                
                TriangleBottomLeft()
                    .aspectRatio(1.0, contentMode: .fit)
            } else {
                //insert other two triangles
            }
            
           
            
        }
        .padding()
    }
}

#Preview {
    TileView()
}
