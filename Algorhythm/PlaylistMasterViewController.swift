//
//  PlaylistMasterViewController.swift
//  Algorhythm
//
//  Created by Alp Eren Can on 10/07/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

import UIKit

class PlaylistMasterViewController: UIViewController {

    @IBOutlet weak var playlistImageView: UIImageView!
    @IBOutlet weak var playlistTitle: UILabel!
    let playlist = Playlist(index: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        playlistImageView.image = playlist.icon
        playlistImageView.backgroundColor = playlist.backgroundColor
        if let _ = playlist.title {
            playlistTitle.text = playlist.title
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showPlaylist" {
            let playlistDetailController = segue.destinationViewController as! PlaylistDetailViewController
            playlistDetailController.playlist = self.playlist
            
        }
    }


}

