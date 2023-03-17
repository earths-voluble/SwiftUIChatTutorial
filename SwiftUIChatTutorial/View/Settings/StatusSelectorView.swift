//
//  StatusSelectorView.swift
//  SwiftUIChatTutorial
//
//  Created by 이보한 on 2023/03/03.
//

import SwiftUI

struct StatusSelectorView: View {
    @ObservedObject var viewModel = StatusViewModel()
    
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .leading, spacing: 1) {
                    Text("현재 상태")
                        .foregroundColor(.gray)
                        .padding()
                    
                    StatusCell(status: viewModel.status)
                    
                    Text("현재 상태를 선택하세요")
                        .foregroundColor(.gray)
                        .padding()
                    
                    // for loop with options
                    
                    ForEach(UserStatus.allCases.filter({ $0 != .notConfigured}),
                            id: \.self) { status in
                        Button(action: {
                            viewModel.updateStatus(status)
                        }, label: {
                            StatusCell(status: status)
                        })
                    }
                }
            }
        }
    }
}

struct StatusSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        StatusSelectorView()
    }
}

struct StatusCell: View {
    let status: UserStatus
    var body: some View {
        HStack {
            Text(status.title)
                .foregroundColor(.black)
            Spacer()
        }
        .frame(height: 56)
        .padding(.horizontal)
        .background(Color.white)
        
    }
}
