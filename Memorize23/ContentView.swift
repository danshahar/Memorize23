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
               // ForEach(cards, id: \.self) { card in
                    CardView()
                CardView()
                CardView()

                }
            }.padding()
        }
        
    }


#Preview {
    
    ContentView()
}

struct CardView: View {
 @State var isFaceUp = false

    var body: some View {
        let shape = RoundedRectangle(cornerRadius: 10)
        ZStack {
            Text("🎁")
                .font(.largeTitle)
            shape
                .fill(.red)
                .opacity(isFaceUp ? 0 : 1)
            shape
                .strokeBorder(lineWidth: 3)
                .foregroundColor(.red)
        }.aspectRatio(2/3, contentMode: .fit)
            .onTapGesture {
                isFaceUp.toggle()
      }
    }
}
