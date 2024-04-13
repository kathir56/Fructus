//
//  SettingsView.swift
//  Fructus
//
//  Created by Kathiravan Murali on 31/12/23.
//

import SwiftUI

struct SettingsView: View {
    @Environment (\.presentationMode) var presentationMode
    
    @AppStorage ("isOnboarding") var isOnboarding : Bool = false
    var body: some View {

        NavigationStack
        {
            ScrollView(.vertical, showsIndicators: false)
            {
                VStack(spacing:20)
                {
                    GroupBox(label: SettingsLabelView(text: "Fructus", symbol: "info.circle"))
                    {
                        Divider()
                            .padding(.vertical,4)
                        
                        HStack(alignment: .center,spacing: 10)
                        {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80,height: 80)
                                .clipShape(.buttonBorder)//instead of corner radius
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruit are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more."
                            )
                            .font(.footnote)
                        }
                    }
                    
                    GroupBox(label:SettingsLabelView(text: "Customization", symbol: "paintbrush"))
                    {
                        Divider()
                            .padding(.vertical,4)
                        
                        Text("If you wish you can restart the application by toggling swtich in this box. That way it is starting onboarding process and you will see the welcome screen again.")
                            .padding(.vertical,8)
                            .frame(minWidth: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding, label: {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .foregroundStyle(.green)
                            } else {
                                Text("Restart".uppercased())
                            }
                        })
                        .padding()
                        .background(Color(UIColor.tertiarySystemGroupedBackground)
                            .clipShape(RoundedRectangle(cornerRadius: 8,style: .continuous)))
                    }
                    
                    GroupBox(label: SettingsLabelView(text: "Application", symbol: "iphone"))
                    {
                        
                        
                        SettingsRowView(name: "iOS Developer",content: "Kathir")
                        SettingsRowView(name: "Designer",content: "Kathir")
                        SettingsRowView(name: "Compatiblility",content: "iOS 14")
                        SettingsRowView(name: "LinkedIn",linkLabel: "Click here",linkDestination:"https://www.linkedin.com/in/kathiravan-m-p-b07617245/")
                        SettingsRowView(name: "SwiftUI",content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    }
                }
                .padding()
            }
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.large)
            .toolbar
            {
                ToolbarItem(placement: .topBarTrailing)
                {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                    })
                    .padding()
                }
            }
        }// navigation
    }
}

#Preview {
    SettingsView()
}
