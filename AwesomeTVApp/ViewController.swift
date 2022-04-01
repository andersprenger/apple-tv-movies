//
//  ViewController.swift
//  AwesomeTVApp
//
//  Created by Anderson Sprenger on 31/03/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        self.view.backgroundColor = .black
        backgroundImageView.alpha = 0.8
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        Movie.movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let movie = Movie.movies[indexPath.row]
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MovieCell.id, for: indexPath) as? MovieCell else {
            return UICollectionViewCell()
        }
        
        cell.movieImage.image = UIImage(named: movie.name)
        cell.movieTitle.text = movie.name
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 450, height: 350)
    }
    
    func collectionView(_ collectionView: UICollectionView, didUpdateFocusIn context: UICollectionViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        guard let indexPath = context.nextFocusedIndexPath else {
            return
        }
        
        let movie = Movie.movies[indexPath.row]
        
        UIView.transition(with: backgroundImageView, duration: 0.4, options: .transitionCrossDissolve) {
            self.backgroundImageView.image = UIImage(named: movie.name)
        }
    }
}

