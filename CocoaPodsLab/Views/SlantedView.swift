//
//  ViewView.swift
//  CocoaPodsLab
//
//  Created by Melinda Diaz on 3/3/20.
//  Copyright © 2020 Melinda Diaz. All rights reserved.
//

import UIKit
import CollectionViewSlantedLayout
//Step1:pod install pod 'CollectionViewSlantedLayout', '~> 3.1'
//step2: import CollectionViewLayout This is what is going to give me a slanted collectionViewLayout

class SlantedView: UIView {
    
    
    public var collectionView: UICollectionView = {
        //So i need my layout to initialize the collection view before writing cv
        //Step:3 for slantedcollectionview
        let slantedLayout = CollectionViewSlantedLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: slantedLayout)
        cv.backgroundColor = #colorLiteral(red: 0.09293671697, green: 0.03006010316, blue: 0.4809977412, alpha: 1)
        return cv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        setUpCollectionViewRestraints()
    }
    
    private func setUpCollectionViewRestraints() {
        addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
}
