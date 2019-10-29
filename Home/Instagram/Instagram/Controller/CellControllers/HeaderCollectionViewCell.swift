//
//  HeaderCollectionViewCell.swift
//  Instagram
//
//  Created by Роман Шуркин on 29/10/2019.
//  Copyright © 2019 Роман Шуркин. All rights reserved.
//

import UIKit

//MARK: Protocol CustomCell
/// Protocol for getting Index and UINib
protocol CustomCell {
    
    static func cellNib() -> UINib?

    static func cellIden() -> String
}

/// Controller of Header
class HeaderCollectionViewCell: UICollectionViewCell, CustomCell {

    //MARK: Outlets
    @IBOutlet weak var avatarImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        customAvatar()
    }
    
    //MARK: Avatar Settings
    /// Function for settings Avatar
    func customAvatar() {
        
        avatarImageView.layer.masksToBounds = false
        avatarImageView.layer.cornerRadius = (avatarImageView.bounds.width ) / 2
        avatarImageView.clipsToBounds = true
    }
    
    //MARK: CustomCell Protocol implementation
    static func cellNib() -> UINib? {
        return UINib(nibName: String(describing: self), bundle: nil)
    }
    
    static func cellIden() -> String {
        return String(describing: self)
    }
}
