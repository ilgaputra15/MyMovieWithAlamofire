//
//  Movie.swift
//  MyMovieWithAlamofire
//
//  Created by ilga yulian putra on 16/08/19.
//  Copyright © 2019 ilga yulian putra. All rights reserved.
//

import Foundation

struct MovieItem: Codable {
    let id: Int
    let title: String
    let overview: String
    let release_date: String
    let poster_path: String
    
}
