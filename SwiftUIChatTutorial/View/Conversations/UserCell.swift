//
//  UserCell.swift
//  SwiftUIChatTutorial
//
//  Created by 이보한 on 2023/03/04.
//

import SwiftUI
import Kingfisher

struct UserCell: View {
    let user: User
    
    var body: some View {
        VStack {
            HStack {
                // 이미지
                KFImage(URL(string: user.profileImageUrl))
                    .resizable()
                    .scaledToFill()
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())
                
                // 유저 정보
                VStack(alignment: .leading, spacing: 4) {
                    Text(user.username)
                        .font(.system(size: 14, weight: .semibold))
                    
                    Text(user.fullname)
                        .font(.system(size: 15))
                }
                .foregroundColor(.black)
                Spacer()
            }
            .padding(.horizontal)
        }
        .padding(.top)
    }
}


