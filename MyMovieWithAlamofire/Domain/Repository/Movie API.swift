//
//  Movie API.swift
//  MyMovieWithAlamofire
//
//  Created by ilga yulian putra on 16/08/19.
//  Copyright © 2019 ilga yulian putra. All rights reserved.
//

import Foundation
import Alamofire

class MovieAPI {
    
    func fetchUpcomingMovie(completion:@escaping (DataResponse<BaseResponse<MovieItem>>) -> Void) {
        let url = URL(string: "\(Constants.MovieAPIUrl)3/movie/upcoming")!
        let parameters: Parameters = [
            "api_key": Constants.MovieKey,
            "page": 1,
        ]
        AF.request(url, method: .get, parameters: parameters)
            .validate()
            .responseDecodable { (response: DataResponse<BaseResponse<MovieItem>>) in
                completion(response)
        }
        
    }
}
