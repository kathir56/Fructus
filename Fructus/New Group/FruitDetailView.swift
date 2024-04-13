//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Kathiravan Murali on 30/12/23.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit: Fruit
    var body: some View {
        NavigationStack
        {
            ScrollView(.vertical,showsIndicators: false)
            {
                VStack(alignment: .center , spacing: 20)
                {
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading,spacing: 20)
                    {
                        
                        // Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundStyle(fruit.gradientColors[1])
                        
                        // Head Line
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // Nutrients
                        NutrientsView(fruit: fruit)
                        
                        //Sub headline
                        Text("learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundStyle(fruit.gradientColors[1])
                        
                        // discriptions
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        // Link
                        SourceLinkView()
                            .padding(.top,10)
                            .padding(.bottom,40)
                        
                    }// vstack
                    .padding(.horizontal,20)
                    .frame(maxWidth: 640,alignment: .center)
                }// vstack
                .navigationTitle(fruit.title)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar(.hidden)//use to hidden the bar title
    
            }// scroll view
            .ignoresSafeArea()
        }// navigation view
        //.navigationBarBackButtonHidden(true)
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    FruitDetailView(fruit: fruitsData[0])
}
