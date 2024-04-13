//
//  ContentView.swift
//  Fructus
//
//  Created by Kathiravan Murali on 27/12/23.
//

import SwiftUI

struct ContentView: View {
    @AppStorage ("isOnboarding") var isOnboarding : Bool?
    
    @State private var isShowingSheet : Bool = false
    
    var fruits : [Fruit] = fruitsData
    var body: some View {
        NavigationView {
            List
            {
                ForEach(fruits) { fruit in
                    NavigationLink(destination : FruitDetailView(fruit: fruit))
                    {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical,4)
                    }
                    
                }
            }
            .navigationTitle("Fruits")
            .toolbar
            {
                ToolbarItem(placement: .topBarTrailing)
                {
                    Button(action: {
                        isOnboarding = true
                        isShowingSheet = true
                    }, label: {
                        Image(systemName: "slider.horizontal.3")
                    })
                    .sheet(isPresented: $isShowingSheet) {
                        SettingsView()
                            .presentationDragIndicator(.visible)
                            .presentationDetents([.medium])
                    }
                }
            }
        }
        //.navigationViewStyle(StackNavigationViewStyle())
        
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
