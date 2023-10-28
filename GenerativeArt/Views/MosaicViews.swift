//
//  MosaicViews.swift
//  GenerativeArt
//
//  Created by Morgan Harris-Stoertz on 2023-10-24.
//

import SwiftUI

struct MosaicViews: View {
    var body: some View {
        Grid(horizontalSpacing: 0, verticalSpacing: 0){
            GridRow{
                
                ForEach(1..<4) { i in
                  TileView()
                }
            }
            GridRow{
                ForEach(1..<4) { i in
                    TileView()
                }
            }
            GridRow{
                ForEach(1..<4) { i in
                    TileView()
                }
            }
        }
    }
}

#Preview {
    MosaicViews()
}
