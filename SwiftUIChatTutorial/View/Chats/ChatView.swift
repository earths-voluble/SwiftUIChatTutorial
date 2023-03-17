//
//  ChatView.swift
//  SwiftUIChatTutorial
//
//  Created by 이보한 on 2023/03/02.
//

import SwiftUI

struct ChatView: View {
    @State private var messageText = ""
    @ObservedObject var viewModel: ChatViewModel
    private let user: User
    
    
    init(user: User) {
        self.user = user
        self.viewModel = ChatViewModel(user: user)
    }
 
    var body: some View {
        VStack {
            // 메시지
            ScrollView {
                VStack(alignment: .leading, spacing: 12) {
                    ForEach((viewModel.messages)) { message in
                        MessageView(viewModel: MessageViewModel(message))
                    }
                }
            }
            
            // 입력창
            CustomInputView(text: $messageText, action: sendMessage)
            
        }
        .navigationTitle(user.username)
        .navigationBarTitleDisplayMode(.inline)
        .padding(.vertical)
    }
    
    func sendMessage() {
        viewModel.sendMessage(messageText)
        messageText = ""
    }
}


