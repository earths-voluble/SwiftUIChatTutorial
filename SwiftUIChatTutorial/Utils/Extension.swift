//
//  Extension.swift
//  SwiftUIChatTutorial
//
//  Created by 이보한 on 2023/03/05.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
