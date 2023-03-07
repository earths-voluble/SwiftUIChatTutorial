//
//  Message.swift
//  SwiftUIChatTutorial
//
//  Created by 이보한 on 2023/03/06.
//

import Foundation

struct Message: Identifiable {
    let id = NSUUID().uuidString
    let isFromCurrentUser: Bool
    let messageText: String
}
