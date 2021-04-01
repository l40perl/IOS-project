//
//  PhotoFriendCollectionViewController.swift
//  Lesson 1.5
//
//  Created by MacBook on 29.03.2021.
//

import UIKit

class PhotosFriendCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    let collectionPhotos = FriendsTableViewController()

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return collectionPhotos.avatarsFriendList.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotosFriendCell", for: indexPath) as! PhotosFriendCollectionViewCell
        
        let photo = collectionPhotos.avatarsFriendList[indexPath.row]
        cell.photosFriendImage.image = photo
    
      
    
        return cell
    }

}
