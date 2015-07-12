//
//  Playlist.swift
//  Algorhythm
//
//  Created by Alp Eren Can on 12/07/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

import Foundation
import UIKit

struct Playlist {
    var title: String?
    var description: String?
    var icon: UIImage?
    var largeIcon: UIImage?
    var backgroundColor: UIColor = UIColor.clearColor()
    var artists: [String] = []
    
    init (index: Int) {
        let musicLibrary = MusicLibrary().library
        let playlistDictionary = musicLibrary[index]
        
        title = playlistDictionary["title"] as? String
        description = playlistDictionary["description"] as? String
        
        if let iconName = playlistDictionary["icon"] as? String {
            icon = UIImage(named: iconName)
        }
        
        if let largeIconName = playlistDictionary["largeIcon"] as? String {
            largeIcon = UIImage(named: largeIconName)
        }
        
        backgroundColor = rgbaColorFromDictionary(playlistDictionary["backgroundColor"] as! [String: CGFloat]);
        
        artists += playlistDictionary["artists"] as! [String]
    }
    
    func rgbaColorFromDictionary(colorDictionary: [String: CGFloat]) -> UIColor {
        let red = colorDictionary["red"]!
        let green = colorDictionary["green"]!
        let blue = colorDictionary["blue"]!
        let alpha = colorDictionary["alpha"]!
        
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
    }
}