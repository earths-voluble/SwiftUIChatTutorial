//
//  ChatView.swift
//  SwiftUIChatTutorial
//
//  Created by 이보한 on 2023/03/02.
//

import SwiftUI

struct ChatView: View {
    @State private var messageText = ""
    @ObservedObject var viewModel = ChatViewModel()
    
    var body: some View {
        VStack {
            
            // 메시지
            
            ScrollView {
                VStack(alignment: .leading, spacing: 12) {
                    ForEach((viewModel.messages)) { message in
                        MessageView(isFromCurrentUser: message.isFromCurrentUser, messageText: message.messageText)
                    }
                    
                }
            }
            
            // 입력창
            CustomInputView(text: $messageText, action: sendMessage)
            
        }
        .navigationTitle("Bohan")
        .navigationBarTitleDisplayMode(.inline)
        .padding(.vertical)
    }
    
    func sendMessage() {
        print("메시지 보냄 \(messageText)")
        messageText = ""
    }
}


