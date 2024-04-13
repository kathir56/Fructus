//
//  FruitRowView.swift
//  Fructus
//
//  Created by Kathiravan Murali on 29/12/23.
//

import SwiftUI

struct FruitRowView: View {
    var fruit : Fruit
    var body: some View {
        HStack
        {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80,height: 80,alignment: .center)
                .shadow(color: .black, radius: 7)
                .background(LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 1)
            {
                Text(fruit.title)
                    .font(.title)
                    .fontWeight(.bold)
                
                Text(fruit.headline)
                    .font(.footnote)
                    .foregroundStyle(.secondary)
            }
        }
    }
}

#Preview {
    FruitRowView(fruit: fruitsData[0])
}
