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
        
    }


}
extension SlantedViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return people.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DetailedSlantedCollectVCell", for: indexPath) as? DetailedSlantedCollectVCell else {
            fatalError("Cannot Deque to cell") }
        let person = people[indexPath.row]
        
        return cell
    }
    
    
}

