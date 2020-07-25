//
//  HomeTabBarViewController.swift
//  TickTokCloned
//
//  Created by Achsuthan Mahendran on 7/18/20.
//  Copyright © 2020 Achsuthan Mahendran. All rights reserved.
//

import UIKit

class HomeTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.setUpTabBar()
    }
    
    private func setUpTabBar(){
        self.view.backgroundColor = .white
        
        
        self.tabBar.standardAppearance.backgroundColor = UIColor.clear
        self.tabBar.backgroundImage = UIImage()
        self.tabBar.isTranslucent = true
        
        
        
        //HomeView
        let homeView = HomeViewController(nibName: nil, bundle: nil)
        let homeTab = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house"))
        homeView.tabBarItem = homeTab
        homeTab.tag = 0
        
        //SearchView
        let searchView = SearchViewViewController(nibName: nil, bundle: nil)
        let searchTab = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), selectedImage: UIImage(systemName: "magnifyingglass"))
        searchView.tabBarItem = searchTab
        searchTab.tag = 1
        
        
        self.viewControllers = [homeView, searchView]
    }

}
