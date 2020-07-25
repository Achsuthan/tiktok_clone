//
//  StatusDiscription.swift
//  TickTokCloned
//
//  Created by Achsuthan Mahendran on 7/19/20.
//  Copyright © 2020 Achsuthan Mahendran. All rights reserved.
//

import UIKit

class StatusDiscription: UIView {
    
    let lblStatus: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui dicta minus molestiae vel beatae natus eveniet ratione temporibus aperiam harum alias officiis assumenda officia quibusdam deleniti eos cupiditate dolore doloribus!"
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
        self.addSubview(self.lblStatus)
        self.lblStatus.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        self.lblStatus.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        self.lblStatus.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        self.lblStatus.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
}
