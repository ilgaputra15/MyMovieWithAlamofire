//
//  HomeProtocol.swift
//  MyMovieWithAlamofire
//
//  Created by ilga yulian putra on 16/08/19.
//  Copyright © 2019 ilga yulian putra. All rights reserved.
//

import Foundation

protocol HomeViewDelegate: NSObjectProtocol {
    func ShowListMovie(listMovie:[MovieItem])
    
}
