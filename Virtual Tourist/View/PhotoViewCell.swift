//
//  PhotoViewCell.swift
//  Virtual Tourist
//
//  Created by Mattia Sanfilippo on 23/04/2020.
//  Copyright © 2020 Mattia Sanfilippo. All rights reserved.
//

import UIKit

class PhotoViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        update(with: nil)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        update(with: nil)
    }
    
    func update(with image: UIImage?) {
        if let imageToDisplay = image {
            activityIndicator.stopAnimating()
            imageView.image = imageToDisplay
        } else {
            activityIndicator.startAnimating()
            imageView.image = nil
        }
    }
    
}
