//
//  SwiftUIView.swift
//  Fructus
//
//  Created by Kathiravan Murali on 28/12/23.
//

import SwiftUI

struct SwiftUIView: View {
    // MARK : - PROPERTIES
    var fruit : Fruit
    @State private var isAnimating : Bool = false
    
    // MARK : - BODY
    var body: some View {
        
        ZStack {
            VStack (spacing:20){
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black, radius: 8)
                    .scaleEffect(isAnimating ? 1.0 : 1.1)
                
                
                Text(fruit.title)
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .black, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                Text(fruit.headline)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 486)
                
                StartButton()
            } //: ZSTACK
        }//: ZSTACK
        .onAppear(perform: {
            withAnimation(.smooth(duration: 1))
            {
                isAnimating = true
            }
        })
        .frame(minWidth: 0,maxWidth: .infinity,minHeight: 0,maxHeight: .infinity)
        .background(LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal,20)
        
        
    }
}

#Preview {
    SwiftUIView(fruit: fruitsData[4])
        //.previewLayout(.fixed(width: 32, height: 64))
}
