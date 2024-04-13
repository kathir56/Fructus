//
//  FructusApp.swift
//  Fructus
//
//  Created by Kathiravan Murali on 27/12/23.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage ("isOnboarding") var isOnboarding : Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding
            {
                OnboardingView()
            }
            else
            {
                ContentView()
                
            }
        }
    }
}
