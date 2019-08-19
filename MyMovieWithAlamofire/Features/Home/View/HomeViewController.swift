//
//  HomeViewController.swift
//  MyMovieWithAlamofire
//
//  Created by ilga yulian putra on 16/08/19.
//  Copyright © 2019 ilga yulian putra. All rights reserved.
//

import Foundation
import UIKit

class HomeViewController: UIViewController, HomeViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    private let homePresenter = HomePresenter()
    var entities = [MovieItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        homePresenter.setViewDelegate(homeViewDelegate: self)
        homePresenter.loadMovie()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    func setupUI() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func ShowListMovie(listMovie: [MovieItem]) {
        if listMovie.count > 0 {
            self.entities = listMovie
            tableView.reloadData()
        }
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return entities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieViewCell
        cell.setView(entities: entities[indexPath.row])
        return cell
    }
}

