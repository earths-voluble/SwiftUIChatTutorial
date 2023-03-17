//
//  SettingsView.swift
//  SwiftUIChatTutorial
//
//  Created by 이보한 on 2023/03/02.
//

import SwiftUI

struct SettingsView: View {
    private let user: User
        
    init(user: User) {
        self.user = user
    }
    
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            VStack(spacing: 32) {
                NavigationLink(
                    destination: EditProfileView(),
                    label: { SettingsHeaderView(user: user) }
                )
                
                VStack(spacing: 1) {
                    ForEach(SettingsCellViewModel.allCases, id: \.self) { viewModel in
                        SettingsCell(viewModel: viewModel)
                    }
                }
                
                Button(action: {
                    AuthViewModel.shared.signount()
                }, label: {
                    Text("로그아웃")
                        .foregroundColor(.red)
                        .font(.system(size: 16, weight: .semibold))
                        .frame(width: UIScreen.main.bounds.width, height: 50)
                        .background(Color.white)
                })
                
                Spacer()
            }
        }

    }
}


