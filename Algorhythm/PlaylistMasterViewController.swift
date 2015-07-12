//
//  PlaylistMasterViewController.swift
//  Algorhythm
//
//  Created by Alp Eren Can on 10/07/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

import UIKit

class PlaylistMasterViewController: UIViewController {

    @IBOutlet var playlistImageViews: [UIImageView]!
    @IBOutlet var playlistTitles: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for index in 0..<playlistImageViews.count {
            let playlist = Playlist(index: index)
            
            let playlistImageView = playlistImageViews[index]
            let playlistTitle = playlistTitles[index]
            
            
            playlistImageView.image = playlist.icon
            playlistImageView.backgroundColor = playlist.backgroundColor
            
            if let _ = playlist.title {
                playlistTitle.text = playlist.title
            } else {
                playlistTitle.text = ""
            }
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showPlaylistSegue" {
            
            let playlistImageView = sender?.view as! UIImageView
            
            if playlistImageViews.contains(playlistImageView) {
                if let index = playlistImageViews.indexOf(playlistImageView) {
                    let playlistDetailController = segue.destinationViewController as! PlaylistDetailViewController
                    playlistDetailController.playlist = Playlist(index: index)
                }
                
            }
        }
    }
    
    @IBAction func showPlaylist(sender: AnyObject) {
        performSegueWithIdentifier("showPlaylistSegue", sender: sender)
    }
    
    
}

