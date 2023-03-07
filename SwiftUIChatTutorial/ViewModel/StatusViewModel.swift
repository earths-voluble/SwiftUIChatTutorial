//
//  StatusViewModel.swift
//  SwiftUIChatTutorial
//
//  Created by 이보한 on 2023/03/03.
//

import SwiftUI

class StatusViewModel: ObservableObject {
    @Published var status: UserStatus = .notConfigured
    
    func updateStatus(_ status: UserStatus) {
        self.status = status
    }
}

enum UserStatus: Int, CaseIterable {
    case notConfigured
    case available
    case busy
    case school
    case movies
    case work
    case batteryLow
    case meeting
    case gym
    case bedtime
    case urgentCallsOnly
    
    var title: String {
        switch self {
        case .notConfigured: return "탭해서 상태 업데이트"
        case .available: return "대화 가능"
        case .busy: return "바쁨"
        case .school: return "수업 중"
        case .movies: return "영화보는 중"
        case .work: return "일하는 중"
        case .batteryLow: return "배터리 부족"
        case .meeting: return "회의 중"
        case .gym: return "운동 중"
        case .bedtime: return "수면 중"
        case .urgentCallsOnly: return "급한 용건만"
        }
    }
}
