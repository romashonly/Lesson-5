//
//  PostDAO.swift
//  Instagram
//
//  Created by Роман Шуркин on 29/10/2019.
//  Copyright © 2019 Роман Шуркин. All rights reserved.
//

import Foundation
import UIKit

///Data Manager of Post
class PostDAO {
    
    /// Method for getting posts of one User
    /// - Parameter user: User whose posts we want to get
    /// - Parameter completion: Completion Handler for creating Posts
    func getPostsOfUser(user: User, completion: (_ posts: [Post]) -> Void) {
        
        let posts = [
            Post(id: 0, user: user, image: UIImage(named: "post1")!, comment: "Hello"),
            Post(id: 1, user: user, image: UIImage(named: "post2")!, comment: "Hai"),
            Post(id: 2, user: user, image: UIImage(named: "post3")!, comment: "Good"),
            Post(id: 3, user: user, image: UIImage(named: "post4")!, comment: "Very Bad")
        ]
        
        completion(posts)
    }
}
