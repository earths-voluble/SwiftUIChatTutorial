//
//  UserCell.swift
//  SwiftUIChatTutorial
//
//  Created by 이보한 on 2023/03/04.
//

import SwiftUI

struct UserCell: View {
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
                    
                    Text("@bohan")
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

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
