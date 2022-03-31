//
//  MovieCell.swift
//  AwesomeTVApp
//
//  Created by Anderson Sprenger on 31/03/22.
//

import UIKit

class MovieCell: UICollectionViewCell {
    static let id: String = "movie-cell"
    
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
//        movieTitle.isHidden = true
    }
    
}
