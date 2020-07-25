//
//  HomeCollectionViewCell.swift
//  TickTokCloned
//
//  Created by Achsuthan Mahendran on 7/18/20.
//  Copyright © 2020 Achsuthan Mahendran. All rights reserved.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    
    let viewBackground: UIView = {
        let view  = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black
        return view
    }()
    
    let fullImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = #imageLiteral(resourceName: "background")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    let lblName: NameLabel = {
        let label  = NameLabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let profileImage: ProfileImage = {
        let image  = ProfileImage()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let shareButton: ButtonWithText = {
        let button  = ButtonWithText()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.img.image = #imageLiteral(resourceName: "share")
        button.lblTitle.text = "Share"
        return button
    }()
    
    let commentButton: ButtonWithText = {
        let button  = ButtonWithText()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.img.image = #imageLiteral(resourceName: "comment")
        button.lblTitle.text = "791"
        return button
    }()
    
    let likeButton: ButtonWithText = {
        let button  = ButtonWithText()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.img.image = #imageLiteral(resourceName: "love")
        button.lblTitle.text = "525.0K"
        return button
    }()
    
    let statusMusicImage: MusicDetailsView = {
        let image  = MusicDetailsView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let lblMusicDetails: NameWithMusic = {
        let label  = NameWithMusic()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    let lblStatusDiscription: StatusDiscription = {
        let label  = StatusDiscription()
        label.translatesAutoresizingMaskIntoConstraints = false
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
        self.addSubview(self.viewBackground)
        self.viewBackground.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        self.viewBackground.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        self.viewBackground.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        self.viewBackground.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        self.viewBackground.heightAnchor.constraint(greaterThanOrEqualToConstant: 300).isActive = true
        
        self.viewBackground.addSubview(self.fullImage)
        self.fullImage.topAnchor.constraint(equalTo: self.viewBackground.topAnchor).isActive = true
        self.fullImage.leadingAnchor.constraint(equalTo: self.viewBackground.leadingAnchor).isActive = true
        self.fullImage.trailingAnchor.constraint(equalTo: self.viewBackground.trailingAnchor).isActive = true
        self.fullImage.bottomAnchor.constraint(equalTo: self.viewBackground.bottomAnchor).isActive = true
        
        self.viewBackground.addSubview(self.lblMusicDetails)
        self.lblMusicDetails.bottomAnchor.constraint(equalTo: self.viewBackground.bottomAnchor, constant: -30).isActive = true
        self.lblMusicDetails.leadingAnchor.constraint(equalTo: self.viewBackground.leadingAnchor, constant: 10).isActive = true
        self.lblMusicDetails.trailingAnchor.constraint(equalTo: self.viewBackground.trailingAnchor, constant: -60).isActive = true
        
        self.viewBackground.addSubview(self.lblStatusDiscription)
        self.lblStatusDiscription.bottomAnchor.constraint(equalTo: self.lblMusicDetails.topAnchor, constant: -30).isActive = true
        self.lblStatusDiscription.leadingAnchor.constraint(equalTo: self.viewBackground.leadingAnchor, constant: 10).isActive = true
        self.lblStatusDiscription.trailingAnchor.constraint(equalTo: self.viewBackground.trailingAnchor, constant: -60).isActive = true
        
        self.viewBackground.addSubview(self.lblName)
        self.lblName.leadingAnchor.constraint(equalTo: self.viewBackground.leadingAnchor, constant: 10).isActive = true
        self.lblName.trailingAnchor.constraint(equalTo: self.viewBackground.trailingAnchor, constant: -10).isActive = true
        self.lblName.bottomAnchor.constraint(equalTo: self.lblStatusDiscription.topAnchor, constant: -10).isActive = true
        
        self.addSubview(self.statusMusicImage)
        self.statusMusicImage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -30).isActive = true
        self.statusMusicImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10).isActive = true
        self.statusMusicImage.heightAnchor.constraint(equalToConstant: 60).isActive = true
        self.statusMusicImage.widthAnchor.constraint(equalToConstant: 60).isActive = true
        
        self.addSubview(self.shareButton)
        self.shareButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        self.shareButton.widthAnchor.constraint(equalToConstant: 60).isActive = true
        self.shareButton.bottomAnchor.constraint(equalTo: self.statusMusicImage.topAnchor, constant: -40).isActive = true
        self.shareButton.trailingAnchor.constraint(equalTo: self.viewBackground.trailingAnchor, constant: -10).isActive = true
        
        self.addSubview(self.commentButton)
        self.commentButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        self.commentButton.widthAnchor.constraint(equalToConstant: 60).isActive = true
        self.commentButton.bottomAnchor.constraint(equalTo: self.shareButton.topAnchor, constant: -30).isActive = true
        self.commentButton.trailingAnchor.constraint(equalTo: self.viewBackground.trailingAnchor, constant: -10).isActive = true
        
        self.addSubview(self.likeButton)
        self.likeButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        self.likeButton.widthAnchor.constraint(equalToConstant: 60).isActive = true
        self.likeButton.bottomAnchor.constraint(equalTo: self.commentButton.topAnchor, constant: -30).isActive = true
        self.likeButton.trailingAnchor.constraint(equalTo: self.viewBackground.trailingAnchor, constant: -10).isActive = true
        
        
        self.addSubview(self.profileImage)
        self.profileImage.heightAnchor.constraint(equalToConstant: 60).isActive = true
        self.profileImage.widthAnchor.constraint(equalToConstant: 60).isActive = true
        self.profileImage.bottomAnchor.constraint(equalTo: self.likeButton.topAnchor, constant: -30).isActive = true
        self.profileImage.trailingAnchor.constraint(equalTo: self.viewBackground.trailingAnchor, constant: -10).isActive = true
        
        
    }
}
