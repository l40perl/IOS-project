//
//  PhotosFriendCollectionViewController.swift
//  Lesson 1.5
//
//  Created by MacBook on 29.03.2021.
//

import UIKit

class PhotosFriendCollectionViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    let collectionPhotos = FriendTableViewController()

        override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            
            return collectionPhotos.avatarsFriendsList.count
        }

        override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotosFriendCell", for: indexPath) as! PhotosFriendCollectionViewCell
            
            let photo = collectionPhotos.avatarsFriendsList[indexPath.row]
            cell.photosFrienndImage.image = photo
        
        
            return cell
        }

    }
