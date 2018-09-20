//
//  BuisnessCell.swift
//  Yelp
//
//  Created by Tommy Tran on 19/09/2018.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class BuisnessCell: UITableViewCell {

    
    @IBOutlet weak var ratingImageView: UIImageView!
    @IBOutlet weak var thumbImageView: UIImageView!
    @IBOutlet weak var titleNameLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var adressLabel: UILabel!
    @IBOutlet weak var foodTypeLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    var business: Business!{
        didSet{
            titleNameLabel.text = business.name
            thumbImageView.setImageWith(business.imageURL!)
            foodTypeLabel.text = business.categories
            adressLabel.text = business.address
            ratingLabel.text = "\(business.reviewCount!) Reviews"
            ratingImageView.image = business.ratingImage
            distanceLabel.text = business.distance
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbImageView.layer.cornerRadius = 5
        thumbImageView.clipsToBounds = true
        titleNameLabel.preferredMaxLayoutWidth = titleNameLabel.frame.size.width
    }
    
    override func layoutSubviews() {
         super.layoutSubviews()
                titleNameLabel.preferredMaxLayoutWidth = titleNameLabel.frame.size.width

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
