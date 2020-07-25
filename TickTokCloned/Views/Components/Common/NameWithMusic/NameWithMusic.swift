//
//  NameWithMusic.swift
//  TickTokCloned
//
//  Created by Achsuthan Mahendran on 7/19/20.
//  Copyright © 2020 Achsuthan Mahendran. All rights reserved.
//

import UIKit

class NameWithMusic: UIView {
    
    let img: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = #imageLiteral(resourceName: "music")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    
    let lblTitle: UILabel = {
        let label  = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.text = "Kaatru Veliyidai - Azhagiye"
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
        self.img.heightAnchor.constraint(equalToConstant: 20).isActive = true
        self.img.widthAnchor.constraint(equalToConstant: 20).isActive = true
        self.img.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        self.img.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        self.addSubview(self.lblTitle)
        self.lblTitle.leadingAnchor.constraint(equalTo: self.img.trailingAnchor, constant: 10).isActive = true
        self.lblTitle.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20).isActive = true
        self.lblTitle.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
}
