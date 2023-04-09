//
//  UserService.swift
//  UIKitSNS
//
//  Created by Woo Min on 2023/04/10.
//

import Firebase

struct UserService {
    static func fetchUser(complection: @escaping(User) -> Void) {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        COLLECTION_USERS.document(uid).getDocument { snapshot, error in
            guard let dictionary = snapshot?.data() else { return }
            let user = User(dictionary: dictionary)
            complection(user)
        }
    }
}
