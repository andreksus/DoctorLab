//
//  TabModel.swift
//  DoctorLab
//
//  Created by student on 23.11.2023.
//

enum TabbedItems: Int, CaseIterable{
    case home = 0
    case favorite
    case chat
    case profile
    
    var title: String{
        switch self {
        case .home:
            return "Home"
        case .favorite:
            return "Calendar"
        case .chat:
            return "Chat"
        case .profile:
            return "Profile"
        }
    }
    
    var iconName: String{
        switch self {
        case .home:
            return "HomeImage"
        case .favorite:
            return "CalendarTabImage"
        case .chat:
            return "ChatImage"
        case .profile:
            return "ProfileImage"
        }
    }
}
