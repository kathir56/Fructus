//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Kathiravan Murali on 30/12/23.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox()// by default its vstack
        {
            HStack
            {
                Text("Content Source")
                
                Spacer()
                
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
            

        }
        
    }
}

#Preview {
    SourceLinkView()
}
