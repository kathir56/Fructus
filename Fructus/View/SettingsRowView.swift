//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Kathiravan Murali on 31/12/23.
//

import SwiftUI

struct SettingsRowView: View {
    
    var name:String
    var content:String? = nil
    var linkLabel:String? = nil
    var linkDestination:String? = nil
    var body: some View {
        
        if content != nil
        {
            VStack {
                Divider()
                    .padding(.vertical,4)
                HStack
                {
                    Text(name)
                        .fontWeight(.bold)
                        .foregroundStyle(.gray)
                    Spacer()
                    Text(content!)
                        .fontWeight(.heavy)
            }
            }
        }
        else if linkLabel != nil && linkDestination != nil
        {
            VStack {
                Divider()
                    .padding(.vertical,4)
                HStack
                {
                    Text(name)
                        .fontWeight(.bold)
                        .foregroundStyle(.gray)
                    
                    Spacer()
                    
                    Link(destination: URL(string: linkDestination!)!, label: {
                        Text(linkLabel!)
                            .fontWeight(.heavy)
                        Image(systemName: "arrow.up.right.square")
                            .foregroundStyle(.pink)
                        
                    })
            }
            }
        }
        else
        {
            EmptyView()
        }
    }
}

#Preview {
    SettingsRowView(name: "Kathir",linkLabel: "apple",linkDestination: "skdf")
}
