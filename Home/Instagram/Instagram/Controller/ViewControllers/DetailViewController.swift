//
//  DetailViewController.swift
//  Instagram
//
//  Created by Роман Шуркин on 29/10/2019.
//  Copyright © 2019 Роман Шуркин. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var commentLabel: UILabel!
    
    //MARK: Fields
    var post: Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = post.image
        commentLabel.text = post.comment
    }
}
