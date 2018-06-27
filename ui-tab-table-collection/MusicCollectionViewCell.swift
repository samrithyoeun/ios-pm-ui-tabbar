//
//  MusicCollectionViewCell.swift
//  ui-tab-table-collection
//
//  Created by Samrith Yoeun on 6/27/18.
//  Copyright © 2018 samrith. All rights reserved.
//

import UIKit

class MusicCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var musicImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    
    func loadData(with music: Music){
        musicImage.image = UIImage(named: music.image)
        titleLabel.text = music.title
        artistLabel.text = music.artist
    }
}
