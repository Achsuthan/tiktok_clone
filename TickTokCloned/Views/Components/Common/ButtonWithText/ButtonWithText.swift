//
//  ButtonWithText.swift
//  TickTokCloned
//
//  Created by Achsuthan Mahendran on 7/18/20.
//  Copyright © 2020 Achsuthan Mahendran. All rights reserved.
//

import UIKit

class ButtonWithText: UIView {
    
    let img: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = #imageLiteral(resourceName: "love")
        return image
    }()
    
    let lblTitle: UILabel = {
        let label  = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1.1B"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        return label
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
        self.img.heightAnchor.constraint(equalToConstant: 40).isActive = true
        self.img.widthAnchor.constraint(equalToConstant: 40).isActive = true
        self.img.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        self.img.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        self.addSubview(self.lblTitle)
        self.lblTitle.topAnchor.constraint(equalTo: self.img.bottomAnchor).isActive = true
        self.lblTitle.centerXAnchor.constraint(equalTo: self.img.centerXAnchor).isActive = true
    }
}
