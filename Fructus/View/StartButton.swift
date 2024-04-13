//
//  StartButton.swift
//  Fructus
//
//  Created by Kathiravan Murali on 28/12/23.
//

import SwiftUI

struct StartButton: View {
    @AppStorage ("isOnboarding") var isOnboarding : Bool?
    
    var body: some View {
        
        Button(action: {
            isOnboarding = false
        }, label: {
            
            HStack(spacing:8) {
                Text("Start")
                    .fontWeight(.bold)
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal,16)
            .padding(.vertical,10)
            .background(
                Capsule()
                    .stroke(.white, lineWidth: 1.25)
            )
        })
        .accentColor(.white)
    }
}

#Preview {
    StartButton()
        .previewLayout(.sizeThatFits)
}
