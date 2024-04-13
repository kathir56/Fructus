//
//  OnboardingView.swift
//  Fructus
//
//  Created by Kathiravan Murali on 28/12/23.
//

import SwiftUI

struct OnboardingView: View {
    var fruits : [Fruit] = fruitsData
    var body: some View {
        TabView
        {
            ForEach(fruits){ item  in
                SwiftUIView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}

#Preview {
    OnboardingView()
}
