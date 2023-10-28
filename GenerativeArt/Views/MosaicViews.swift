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
            
            //number of rows
                ForEach(1..<5) { J in
                    GridRow{
                        
                        //reapeats in a row (coloums)
                        ForEach(1..<5) { i in
                            TileView()
                        }
                    }
                }
          
        }
    }
}

#Preview {
    MosaicViews()
}
