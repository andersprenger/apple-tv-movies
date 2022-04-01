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
        
        movieImage.layer.cornerRadius = 10
        movieTitle.isHidden = true
    }
    
    override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        if context.nextFocusedView == self {
            coordinator.addCoordinatedAnimations {
                self.movieTitle.isHidden = false
                self.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            }
        } else if context.previouslyFocusedView == self {
            coordinator.addCoordinatedAnimations {
                self.movieTitle.isHidden = true
                self.transform = .identity
            }
        }
    }
}
