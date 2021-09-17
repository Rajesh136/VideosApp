//
//  VideoPlayer.swift
//  FunnyVideosApp
//
//  Created by Rajesh koyi on 17/09/21.
//

import UIKit
import AVKit

class VideoPlayer:UIView {
    var vPlayer:UIView!
    var player:AVPlayer?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        vPlayer = UIView(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height))
        addSubview(vPlayer)
        addPlayerToView(vPlayer)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func addPlayerToView(_ view: UIView) {
        player = AVPlayer()
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.bounds
        playerLayer.videoGravity = .resizeAspectFill
        view.layer.addSublayer(playerLayer)
    }
    
    func playVideoWithFileName(_ fileName:String, ofType type:String) {
        guard let filePath = Bundle.main.path(forResource: fileName, ofType: type) else {
            print("path notFound.....")
            return
        }
        let videoURL = URL(fileURLWithPath: filePath)
        let playerItem = AVPlayerItem(url: videoURL)
        player?.replaceCurrentItem(with: playerItem)
        player?.play()
    }
    
}
