//
//  HomeViewController.swift
//  TickTokCloned
//
//  Created by Achsuthan Mahendran on 7/18/20.
//  Copyright © 2020 Achsuthan Mahendran. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let view  = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell", for: indexPath) as! HomeCollectionViewCell
        return view
    }
    
    
    let backgourndView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    let collectionView: UICollectionView = {
        let view = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout.init())
        let layout  = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.itemSize = UIScreen.main.bounds.size
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        layout.scrollDirection = .vertical
        view.isPagingEnabled = true
        view.translatesAutoresizingMaskIntoConstraints = false
        view.collectionViewLayout = layout
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUp()
    }
    private func setUp(){
        self.view.backgroundColor = .black
        
        //backgroundView
        self.view.addSubview(self.backgourndView)
        self.backgourndView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        self.backgourndView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        self.backgourndView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        self.backgourndView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        
        self.backgourndView.addSubview(self.collectionView)
        self.collectionView.topAnchor.constraint(equalTo: self.backgourndView.topAnchor).isActive = true
        self.collectionView.leadingAnchor.constraint(equalTo: self.backgourndView.leadingAnchor).isActive = true
        self.collectionView.trailingAnchor.constraint(equalTo: self.backgourndView.trailingAnchor).isActive = true
        self.collectionView.bottomAnchor.constraint(equalTo: self.backgourndView.bottomAnchor).isActive = true
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.register(HomeCollectionViewCell.self, forCellWithReuseIdentifier: "HomeCollectionViewCell")
    }
}
