//
//  UserCellViewModel.swift
//  UIKitSNS
//
//  Created by Woo Min on 2023/04/16.
//

import Foundation

class UserCellViewModel {
    private let user: User
    
    var profileImageUrl: URL? {
        return URL(string: user.profileImageUrl)
    }
    
    var username: String {
        return user.username
    }
    
    var fullname: String {
        return user.fullname
    }
    
    init(user: User) {
        self.user = user
    }
}
