//
//  PartyCell.swift
//  Party Rock App
//
//  Created by Ruben Quispe Montoya on 8/4/17.
//  Copyright © 2017 rquispe. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    //pass date every time a new cell is created
    func updateUI(partyRock: PartyRock) {

        
        //TODO
        let url = URL(string: partyRock.imageURL)!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
                self.videoTitle.text = partyRock.videoTitle
            } catch {
                
            }
            
        }
        
    }

    
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }

}
