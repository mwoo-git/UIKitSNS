//
//  profileCell.swift
//  UIKitSNS
//
//  Created by Woo Min on 2023/04/02.
//

import UIKit

class ProfileCell: UICollectionViewCell {
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .lightGray
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
