//
//  MusicCollectionViewCell.swift
//  ui-tab-table-collection
//
//  Created by Samrith Yoeun on 6/27/18.
//  Copyright © 2018 samrith. All rights reserved.
//

import UIKit
import Device

class MusicCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var musicImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    
    func loadData(with music: Music){
        switch Device.size(){
        case .screen4Inch :
            print("will use the old configuration")
        case .screen4_7Inch:
            musicImage.frame.size.height = 157
            musicImage.frame.size.width = 157
            print("Screen size \(musicImage.frame.size) ")
        default:
            musicImage.frame.size = CGSize(width: 191, height: 191)
        }
        musicImage.image = UIImage(named: music.image)
        titleLabel.text = music.title
        artistLabel.text = music.artist
    }
}


