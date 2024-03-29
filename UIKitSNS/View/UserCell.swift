//
//  UserCell.swift
//  UIKitSNS
//
//  Created by Woo Min on 2023/04/16.
//

import UIKit

class UserCell: UITableViewCell {
    
    // MARK: - Properties
    
    var vm: UserCellViewModel? {
        didSet { configure() }
    }
    
    private let profileImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.backgroundColor = .lightGray
        iv.image = UIImage(named: "venom-7")
        return iv
    }()
    
    private let usernameLabel: UILabel  = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "민우"
        return label
    }()
    
    private let fullnameLabel: UILabel  = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.text = "민우가 풀네임.."
        label.textColor = .lightGray
        return label
    }()
    
    // MARK: - Lifecycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(profileImageView)
        profileImageView.setDimensions(height: 48, width: 48)
        profileImageView.layer.cornerRadius = 48 / 2
        
        profileImageView.centerY(inView: self, leftAnchor: leftAnchor, paddingLeft: 12)
        
        let stack = UIStackView(arrangedSubviews: [usernameLabel, fullnameLabel])
        stack.axis = .vertical
        stack.spacing = 4
        stack.alignment = .leading
        
        addSubview(stack)
        stack.centerY(inView: profileImageView, leftAnchor: profileImageView.rightAnchor, paddingLeft: 8)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Helpers
    
    func configure() {
        guard let vm = vm else { return }
        
        profileImageView.sd_setImage(with: vm.profileImageUrl)
        usernameLabel.text = vm.username
        fullnameLabel.text = vm.fullname
    }
    
    // MARK: - Actions
    
}
