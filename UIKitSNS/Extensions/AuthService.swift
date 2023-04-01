//
//  AuthService.swift
//  UIKitSNS
//
//  Created by Woo Min on 2023/04/02.
//

import UIKit
import Firebase

struct AuthCredentials {
    let email: String
    let password: String
    let fullname: String
    let username: String
    let progileImage: UIImage
}

struct AuthService {
    static func registerUser(withCredential credentials: AuthCredentials) {
        print("\(credentials)")
    }
}


