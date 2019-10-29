//
//  UserDAO.swift
//  Instagram
//
//  Created by Роман Шуркин on 29/10/2019.
//  Copyright © 2019 Роман Шуркин. All rights reserved.
//

import Foundation
import UIKit

///Data Manager of User
class UserDAO {
    
    /// Method for getting User
    /// - Parameter id: id of User
    /// - Parameter completion: Completion Handler for creating User
    func getUser(id: Int, completion: (_ user: User) -> Void){
        completion(User(id: id, avatar: UIImage(named: "1")!))
    }
}
