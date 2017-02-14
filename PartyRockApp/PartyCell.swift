//
//  PartyCellTableViewCell.swift
//  PartyRockApp
//
//  Created by LionMane Software on 2/14/17.
//  Copyright © 2017 LionMane Software. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitlte: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(partyRock: PartyRock ){
        videoTitlte.text = partyRock.videoTitle
        
        let url = URL(string: partyRock.imageUrl)!
        
        DispatchQueue.global().async {
            do{
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            }catch {
                //handle the error
            }
        }
        
    }
    
}
