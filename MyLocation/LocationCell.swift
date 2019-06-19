//
//  LocationCell.swift
//  MyLocation
//
//  Created by Bing Tian on 3/12/19.
//  Copyright © 2019 tianbing. All rights reserved.
//

import UIKit

class LocationCell: UITableViewCell {
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!

    @IBOutlet weak var photoImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        let selection = UIView(frame: CGRect.zero)
        selection.backgroundColor = UIColor(white: 1.0, alpha: 0.2)
        selectedBackgroundView = selection
        // Initialization code
        photoImageView.layer.cornerRadius = photoImageView.bounds.size.width/2
        photoImageView.clipsToBounds = true
        separatorInset = UIEdgeInsets(top: 0, left: 82, bottom: 0, right: 0)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func configure(for location: Location) {
        if location.locationDescription.isEmpty {
            descriptionLabel.text = "(No Description)"
        } else{
            descriptionLabel.text = location.locationDescription
        }
        if let placemark = location.placemark{
            var text = ""
            text.add(text: placemark.subThoroughfare)
            text.add(text: placemark.thoroughfare, separatedBy: " ")
            text.add(text: placemark.locality, separatedBy: ", ")
            addressLabel.text = text
        } else{
            addressLabel.text = String(format: "Lat: %.8f, %.8f", location.latitude, location.longitude)
        }
        photoImageView.image = thumbnail(for: location)
    }
    func thumbnail(for location: Location) -> UIImage {
        if location.hasPhoto, let image = location .photoImage{
            return image.resized(withBounds: CGSize(width: 52, height: 52))
        }
        return UIImage(named: "No Photo")!
    }

}