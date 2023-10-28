//
//  MosaicViews.swift
//  GenerativeArt
//
//  Created by Morgan Harris-Stoertz on 2023-10-24.
//

import SwiftUI

struct MosaicViews: View {
    //MARK: Stored properties
    @State var columns = 7.0
    @State var rows = 4
    
    //MARK: Computed properties
    var body: some View {
        VStack {
            Grid(horizontalSpacing: 0, verticalSpacing: 0){
                
                //number of rows
                ForEach(0..<rows, id:\.self) { J in
                    GridRow{
                        
                        //reapeats in a row (colums)
                        ForEach(0..<Int(columns), id: \.self) { i in
                            TileView()
                        }
                    }
                }
                
            }
        }
        
        Slider(value: $columns, in: 1...10, step: 1.0)
    }
}

#Preview {
    MosaicViews()
}
