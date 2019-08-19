//
//  MovieViewCell.swift
//  MyMovieWithAlamofire
//
//  Created by ilga yulian putra on 17/08/19.
//  Copyright © 2019 ilga yulian putra. All rights reserved.
//

import UIKit

class MovieViewCell: UITableViewCell {

    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var desc: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setView(entities: MovieItem) {
        title.text = entities.title
        desc.text = entities.overview
        let urlImage = Constants.imageMovieURL + entities.poster_path
        imageCell.downloaded(from: urlImage, contentMode: .scaleToFill)
        imageCell.round()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
