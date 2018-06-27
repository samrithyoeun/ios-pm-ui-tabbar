//
//  MusicCollectionViewController.swift
//  ui-tab-table-collection
//
//  Created by Samrith Yoeun on 6/27/18.
//  Copyright © 2018 samrith. All rights reserved.
//

import UIKit

class MusicCollectionViewController: UICollectionViewController {

    let musicCollection = [ Music(title: "Humble", artist: "Kentric Larma",image: "humble.jpg"),
                   Music(title: "Humble", artist: "Kentric Larma",image: "humble.jpg"),
                   Music(title: "Humble", artist: "Kentric Larma",image: "humble.jpg"),
                   Music(title: "Humble", artist: "Kentric Larma",image: "humble.jpg"),
                   Music(title: "Humble", artist: "Kentric Larma",image: "humble.jpg"),
                   Music(title: "Humble", artist: "Kentric Larma",image: "humble.jpg"),
                   Music(title: "Humble", artist: "Kentric Larma",image: "humble.jpg"),
                   ]

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return musicCollection.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let music = musicCollection[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Music Collection Cell", for: indexPath) as! MusicCollectionViewCell
        cell.loadData(with: music)
        return cell
    }
}
