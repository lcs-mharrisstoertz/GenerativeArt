//
//  TileView.swift
//  GenerativeArt
//
//  Created by Morgan Harris-Stoertz on 2023-10-24.
//

import SwiftUI


struct TileView: View {
    var body: some View {
        VStack {
            TriangleTopRight()
            //make shape a square
                .aspectRatio(1.0, contentMode: .fit)
            
            TriangleBottomLeft()
                .aspectRatio(1.0, contentMode: .fit)
            
        }
        .padding()
    }
}

#Preview {
    TileView()
}
