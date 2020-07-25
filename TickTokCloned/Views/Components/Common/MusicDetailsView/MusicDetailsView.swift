//
//  MusicDetailsView.swift
//  TickTokCloned
//
//  Created by Achsuthan Mahendran on 7/19/20.
//  Copyright © 2020 Achsuthan Mahendran. All rights reserved.
//

import UIKit

class MusicDetailsView: UIView {
    
    let img: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .lightGray
        image.layer.borderWidth = 1
        image.layer.borderColor = UIColor.white.cgColor
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
        self.img.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1).isActive = true
        self.img.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1).isActive = true
        self.img.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        self.img.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.img.layer.cornerRadius = self.img.frame.height/2
    }
}
