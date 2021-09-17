//
//  ViewController.swift
//  FunnyVideosApp
//
//  Created by Rajesh koyi on 17/09/21.
//

import UIKit

class HomeViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var videoNames = ["video-1", "video-2", "video-3", "video-4", "video-5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        collectionView.register(VideoCollectionViewCell.self, forCellWithReuseIdentifier: "CellID")
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.isPagingEnabled = true
    
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return videoNames.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellID", for: indexPath) as! VideoCollectionViewCell
        let videoName = videoNames[indexPath.row]
        cell.videoPlayer.playVideoWithFileName(videoName, ofType: "mp4")
        
        return cell
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 0
        
    }
}


