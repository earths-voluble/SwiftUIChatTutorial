//
//  ConversationCell.swift
//  SwiftUIChatTutorial
//
//  Created by 이보한 on 2023/03/04.
//

import SwiftUI

struct ConversationCell: View {
    var body: some View {
        VStack {
            HStack {
                // 이미지
                Image("myProfileImage")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())
                
                // 유저 정보
                VStack(alignment: .leading, spacing: 4) {
                    Text("보한")
                        .font(.system(size: 14, weight: .semibold))
                    
                    Text("최신 메시지")
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

struct ConversationCell_Previews: PreviewProvider {
    static var previews: some View {
        ConversationCell()
    }
}
