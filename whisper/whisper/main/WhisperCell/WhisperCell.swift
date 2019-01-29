//
//  WhisperCell.swift
//  whisper
//
//  Created by Marco Antonio Martínez Gutiérrez on 29/01/19.
//  Copyright © 2019 Marco Antonio Martínez Gutiérrez. All rights reserved.
//

import UIKit

class WhisperCell: UICollectionViewCell {

    @IBOutlet weak var whisperImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setImage(_ url: String){
        whisperImage.downloadedFrom(link: url)
    }

}
