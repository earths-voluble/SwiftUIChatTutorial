//
//  SwiftUIChatTutorialApp.swift
//  SwiftUIChatTutorial
//
//  Created by 이보한 on 2023/02/18.
//

import SwiftUI
import Firebase

@main
struct SwiftUIChatTutorialApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthViewModel.shared)
        }
    }
}
