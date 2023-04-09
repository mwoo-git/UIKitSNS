//
//  ProfileHeaderViewModel.swift
//  UIKitSNS
//
//  Created by Woo Min on 2023/04/10.
//

import Foundation

struct ProfileHeaderViewModel {
    let user: User
    
    var fullname: String {
        return user.fullname
    }
    
    var profileImageUrl: URL? {
        return URL(string: user.profileImageUrl)
    }
    
    init(user: User) {
        self.user = user
    }
}
