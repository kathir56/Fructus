//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Kathiravan Murali on 30/12/23.
//

import SwiftUI

struct FruitHeaderView: View {
    
    @State private var isAnimating : Bool = false
    
    var fruit: Fruit
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black, radius: 10)
                .padding(.vertical,20)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
        }
        .frame(height:440)
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.3)) {
                isAnimating = true
            }
        })
    }
}

#Preview {
    FruitHeaderView(fruit: fruitsData[0])
}
