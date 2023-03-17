//
//  ConversationCell.swift
//  SwiftUIChatTutorial
//
//  Created by 이보한 on 2023/03/04.
//

import SwiftUI
import Kingfisher

struct ConversationCell: View {
    @ObservedObject var viewModel: ConversationCellViewModel
    
    
    var body: some View {
        if let user = viewModel.message.user {
            NavigationLink(destination: ChatView(user: user)) {
                VStack {
                    HStack {
                        // 이미지
                        KFImage(viewModel.chatPartnerProfileImageUrl)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 48, height: 48)
                            .clipShape(Circle())
                        
                        // 메시지 정보
                        VStack(alignment: .leading, spacing: 4) {
                            Text(viewModel.fullname)
                                .font(.system(size: 14, weight: .semibold))
                            
                            Text(viewModel.message.text)
                                .font(.system(size: 15))
                        }.foregroundColor(.black)
                        
                        Spacer()
                        
                    }
                    .padding(.horizontal)
                    
                    Divider()
                    
                }
                .padding(.top)
            }
        }
        
    }
}
