//
//  ContentView.swift
//  Memorize23
//
//  Created by Dan Shahar on 4/12/25.
//

import SwiftUI

struct ContentView: View {
    let cards: [CardView] = [CardView(), CardView(), CardView()]
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            LazyVGrid(columns:  [GridItem(.adaptive(minimum: 100, maximum: 300))]) {
                ForEach(cards, id: \.self) { card in
                    CardView()
                }
            }
        }
        .padding()
    }
}

#Preview {
    
    ContentView()
}

struct CardView: View, Hashable {
    @State  var isFaceUp: Bool = false

    var body: some View {
        ZStack {
            Text("🎁")
                .font(.largeTitle)
            RoundedRectangle(cornerRadius: 10)
                .fill(.red)
                .opacity(isFaceUp ? 0 : 1)
            RoundedRectangle(cornerRadius: 10)
                .strokeBorder(lineWidth: 3)
                .foregroundColor(.red)
        }.aspectRatio(2/3, contentMode: .fit)
            .onTapGesture {
            isFaceUp.toggle()
      }
    }
}
