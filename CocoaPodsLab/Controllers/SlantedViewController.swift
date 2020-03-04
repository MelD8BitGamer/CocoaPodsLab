//
//  ViewController.swift
//  CocoaPodsLab
//
//  Created by Melinda Diaz on 3/3/20.
//  Copyright © 2020 Melinda Diaz. All rights reserved.
//

import UIKit
import CollectionViewSlantedLayout

class SlantedViewController: UIViewController {
//TODO: fix imageView in cellforitemat datasource
    public lazy var slantedView = SlantedView()
    private var people = [User]() {
        didSet {
            DispatchQueue.main.async {
                self.slantedView.collectionView.reloadData()
            }
        }
    }
    
    override func loadView() {
        view = slantedView
    }
    
    //TODO:Would like to use teddy bear animator from here https://github.com/cgoldsby/LoginCritter?utm_source=mybridge&utm_medium=blog&utm_campaign=read_more
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slantedView.collectionView.register(SlantedCollectVCell.self, forCellWithReuseIdentifier: "SlantedCollectVCell")
        slantedView.collectionView.dataSource = self
        loadPeople()
        
    }

    private func loadPeople() {
        APIClient.getUsers { [weak self] (result) in
            switch result {
            case .failure(let appError):
                fatalError("cannot load people its an apocalypse \(appError)")
            case .success(let users):
                self?.people = users
            }
        }
    }
}
extension SlantedViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return people.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SlantedCollectVCell", for: indexPath) as? SlantedCollectVCell else {
            fatalError("Cannot Deque to cell") }
        let person = people[indexPath.row]
       // cell.imageView = person.picture.large.description
        cell.nameLabel.text = "First: \(person.name.first), Last: \(person.name.last)"
        cell.locationLabel.text = "Location: \(person.location.state)"
        return cell
    }
    
    
}

