//
//  InstagramCollectionViewController.swift
//  Instagram
//
//  Created by Роман Шуркин on 29/10/2019.
//  Copyright © 2019 Роман Шуркин. All rights reserved.
//

import UIKit

//MARK: Identifiers of cells
private let headerIden = HeaderCollectionViewCell.cellIden()
private let postIden = PostCollectionViewCell.cellIden()

class InstagramCollectionViewController: UICollectionViewController {
    
    //MARK: Fields
    var idOfUser = 1
    var user: User!
    var postsOfUser: [Post]!
    var getPostFromArray: ((Int) -> Post)!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        getPostFromArray = { [weak self] index in
            self!.postsOfUser[index]
        }
        
        UserDAO().getUser(id: idOfUser) { user in
            self.user = user
        }
        
        PostDAO().getPostsOfUser(user: user) { posts in
            self.postsOfUser = posts
        }

        // Register cell classes
        self.collectionView.registerCell(HeaderCollectionViewCell.self)
        self.collectionView.registerCell(PostCollectionViewCell.self)
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       
        if section == 0 {
            return 1
        }
        else {
            return postsOfUser.count
        }
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.section == 0 && indexPath.row == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: headerIden, for: indexPath) as! HeaderCollectionViewCell
            
            return cell
        }
        else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: postIden, for: indexPath) as! PostCollectionViewCell

            cell.configure(with: getPostFromArray(indexPath.item))
            
            return cell
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.section != 0 {
            performSegue(withIdentifier: "goDetail", sender: postsOfUser[indexPath.row])
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goDetail", let post = sender as? Post {
            
            let destController = segue.destination as! DetailViewController
            
            destController.post = post
        }
    }
}
