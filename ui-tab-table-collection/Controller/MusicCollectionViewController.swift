//
//  MusicCollectionViewController.swift
//  ui-tab-table-collection
//
//  Created by Samrith Yoeun on 6/27/18.
//  Copyright © 2018 samrith. All rights reserved.
//

import UIKit
import Device

class MusicCollectionViewController: UICollectionViewController {
    let musicCollection = [ Music(title: "Humble", artist: "Kentric Larma",image: "music.jpg"),
                            Music(title: "I like it", artist: "Cardi B",image: "music.jpg"),
                            Music(title: "Girl like you", artist: "Maroon 5",image: "music.jpg"),
                            Music(title: "Sangria Wine", artist: "Phrell",image: "music.jpg"),
                            Music(title: "Humble", artist: "Kentric Larma",image: "music.jpg"),
                            Music(title: "Humble", artist: "Kentric Larma",image: "music.jpg"),
                            Music(title: "Humble", artist: "Kentric Larma",image: "music.jpg"),
                            ]
    
    @IBOutlet var musicCollectonView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        musicCollectonView.contentSize = CGSize(width: 200, height: 200)
        
    }
    
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
        print(cell.frame.size)
        return cell
    }
}

extension MusicCollectionViewController : UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch Device.size(){
        case .screen4Inch:
            return CGSize(width: 140, height: 210)
        case .screen4_7Inch, .screen5_8Inch:
            return CGSize(width: 157, height: 210)
        default:
            return CGSize(width: 191, height: 230)
        }
        
    }
   
}

