//
//  HomePresenter.swift
//  MyMovieWithAlamofire
//
//  Created by ilga yulian putra on 16/08/19.
//  Copyright © 2019 ilga yulian putra. All rights reserved.
//

import Foundation

class HomePresenter {
    private let movieAPI: MovieAPI
    weak private var homeViewDelegate : HomeViewDelegate?
    
    init() {
        self.movieAPI = MovieAPI()
    }
    
    func setViewDelegate(homeViewDelegate: HomeViewDelegate?){
        self.homeViewDelegate = homeViewDelegate
    }
    
    func loadMovie() {
        movieAPI.fetchUpcomingMovie() { response in
            switch response.result {
            case .success:
                print(response)
                print("Validation Successful")
                self.homeViewDelegate?.ShowListMovie(listMovie: response.value!.results)
            case .failure(let error):
                print(error)
                print("Error Get result")
            }
            
        }
        
    }
}
