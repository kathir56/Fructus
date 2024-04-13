//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Kathiravan Murali on 31/12/23.
//

import SwiftUI

struct SettingsLabelView: View {
    var text:String
    var symbol:String
    var body: some View {
        HStack {
            Text(text.uppercased())
            Spacer()
            Image(systemName: symbol)
        }
    }
}

#Preview {
    SettingsLabelView(text: "Fructus", symbol: "info.circle")
}
