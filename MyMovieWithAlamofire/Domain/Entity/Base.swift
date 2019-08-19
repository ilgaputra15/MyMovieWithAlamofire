//
//  Base.swift
//  MyMovieWithAlamofire
//
//  Created by ilga yulian putra on 16/08/19.
//  Copyright © 2019 ilga yulian putra. All rights reserved.
//

import Foundation

struct BaseResponse<T: Codable>: Codable {
    let results: [T]
    let page: Int
    let total_pages: Int
}
