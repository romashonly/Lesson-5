//
//  Post.swift
//  Instagram
//
//  Created by Роман Шуркин on 29/10/2019.
//  Copyright © 2019 Роман Шуркин. All rights reserved.
//

import Foundation
import UIKit

/// Model of Post
struct Post {
    
    var id: Int
    var user: User
    var image: UIImage
    var comment: String
}
