//
//  ContentView.swift
//  GenerativeArt
//
//  Created by Morgan Harris-Stoertz on 2023-10-24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Rectangle()
            //make shape a square
                .aspectRatio(1.0, contentMode: .fit)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
