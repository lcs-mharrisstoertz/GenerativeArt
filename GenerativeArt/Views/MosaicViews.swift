//
//  MosaicViews.swift
//  GenerativeArt
//
//  Created by Morgan Harris-Stoertz on 2023-10-24.
//

import SwiftUI

struct MosaicViews: View {
    //MARK: Stored properties
    let columns = 7
    let rows = 4
    
    //MARK: Computed properties
    var body: some View {
        VStack {
            Grid(horizontalSpacing: 0, verticalSpacing: 0){
                
                //number of rows
                ForEach(0..<rows, id:\.self) { J in
                        GridRow{
                            
                            //reapeats in a row (colums)
                            ForEach(0..<columns, id: \.self) { i in
                                TileView()
                            }
                        }
                    }
              
            }
            
        }
    }
}

#Preview {
    MosaicViews()
}
