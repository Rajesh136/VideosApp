//
//  VideoCollectionViewCell.swift
//  FunnyVideosApp
//
//  Created by Rajesh koyi on 17/09/21.
//

import UIKit

class VideoCollectionViewCell: UICollectionViewCell {
   
    var videoPlayer:VideoPlayer!
   
    override init(frame: CGRect) {
        super.init(frame: frame)
       
        videoPlayer = VideoPlayer(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height))
        
        if subviews.count == 0  {
            addSubview(videoPlayer)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
