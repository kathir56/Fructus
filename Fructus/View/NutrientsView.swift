//
//  NutrientsView.swift
//  Fructus
//
//  Created by Kathiravan Murali on 30/12/23.
//

import SwiftUI

struct NutrientsView: View {
    var fruit : Fruit
    var nutrients = ["Energy","Sugar","Fat","Protein","Vitamin","Minerals"]
    var body: some View {
        GroupBox()
        {
            DisclosureGroup("Nutritional Value per 100g")
            {
                ForEach(0..<nutrients.count, id: \.self){ item in
                    
                    Divider()
                        .padding(.vertical,4)
                    
                    HStack
                    {
                        Group
                        {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundStyle(fruit.gradientColors[1])
                        .fontWeight(.bold)
                        
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                    
                }
            
            }
        }
        
        
    }
}

#Preview {
    NutrientsView(fruit: fruitsData[0])
}
