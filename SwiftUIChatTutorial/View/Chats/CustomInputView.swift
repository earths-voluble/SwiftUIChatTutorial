//
//  CustomInputView.swift
//  SwiftUIChatTutorial
//
//  Created by 이보한 on 2023/03/06.
//

import SwiftUI

struct CustomInputView: View {
    @Binding var text: String
    
    var action: () -> Void
    
    var body: some View {
        VStack {
            Rectangle()
                .foregroundColor(Color(.separator))
                .frame(width: UIScreen.main.bounds.width, height: 0.75)
                
            HStack {
                TextField("메시지", text: $text)
                    .textFieldStyle(PlainTextFieldStyle())
                    .font(.body)
                    .frame(minHeight: 30)
                    
                
                Button(action: action, label: {
                    Text("보내기")
                        .bold()
                        .foregroundColor(.black)
                    
                })
            }
            .padding(.bottom, 8)
            .padding(.horizontal)
        }
    }
}


