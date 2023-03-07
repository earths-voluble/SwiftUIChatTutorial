//
//  ChatViewModel.swift
//  SwiftUIChatTutorial
//
//  Created by 이보한 on 2023/03/06.
//

import Foundation

class ChatViewModel: ObservableObject {
    @Published var messages = [Message]()
    
    init() {
        messages = mockMessages
    }
    
    
    var mockMessages: [Message] {
        [
            .init(isFromCurrentUser: true, messageText: "안녕안녕"),
            .init(isFromCurrentUser: false, messageText: "반가워"),
            .init(isFromCurrentUser: true, messageText: "그래그래"),
            .init(isFromCurrentUser: false, messageText: "재밌니"),
            .init(isFromCurrentUser: true, messageText: "그래그래"),
            .init(isFromCurrentUser: false, messageText: "굿"),
            .init(isFromCurrentUser: true, messageText: "굿"),
            .init(isFromCurrentUser: false, messageText: "잘가잘가")
        ]
    }
}
