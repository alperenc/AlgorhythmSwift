//
//  PlaylistDetailViewController.swift
//  Algorhythm
//
//  Created by Alp Eren Can on 10/07/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

import UIKit

class PlaylistDetailViewController: UIViewController {
    
    var playlist: Playlist?
    @IBOutlet weak var playlistCoverImage: UIImageView!
    @IBOutlet weak var playlistTitle: UILabel!
    @IBOutlet weak var playlistDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if playlist != nil {
            playlistCoverImage.image = playlist!.largeIcon
            playlistCoverImage.backgroundColor = playlist!.backgroundColor
            
            if let _ = playlist?.title {
                playlistTitle.text = playlist!.title
            } else {
                playlistTitle.text = ""
            }
            
            if let _ = playlist?.description {
                playlistDescription.text = playlist!.description
            } else {
                playlistDescription.text = ""
            }
        }
//        navigationItem.title = "Artists"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
