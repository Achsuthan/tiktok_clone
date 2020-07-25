//
//  ProfileImage.swift
//  TickTokCloned
//
//  Created by Achsuthan Mahendran on 7/18/20.
//  Copyright © 2020 Achsuthan Mahendran. All rights reserved.
//

import UIKit

class ProfileImage: UIView {
    
    let img: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.borderColor = UIColor.white.cgColor
        image.layer.borderWidth = 1
        image.image = #imageLiteral(resourceName: "IMG_1906-1")
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        return image
    }()
    
    let imgPlus: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .red
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = #imageLiteral(resourceName: "plusButton")
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUp(){
        self.addSubview(self.img)
        self.img.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        self.img.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        self.img.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1).isActive = true
        self.img.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1).isActive = true
        
        self.addSubview(self.imgPlus)
        self.imgPlus.bottomAnchor.constraint(equalTo: self.img.bottomAnchor, constant: 10).isActive = true
        self.imgPlus.centerXAnchor.constraint(equalTo: self.img.centerXAnchor).isActive = true
        self.imgPlus.heightAnchor.constraint(equalToConstant: 20).isActive = true
        self.imgPlus.widthAnchor.constraint(equalToConstant: 20).isActive = true
        self.imgPlus.layer.cornerRadius = 10
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.img.layer.cornerRadius = self.img.frame.height/2
    }
}
