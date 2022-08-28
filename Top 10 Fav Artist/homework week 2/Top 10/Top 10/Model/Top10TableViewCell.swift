//
//  Top10TableViewCell.swift
//  Top 10
//
//  Created by Consultant on 8/26/22.
//

import UIKit

class Top10TableViewCell: UITableViewCell {

    var topImageView = UIImageView()
    var topTitle = UILabel()
    //TODO:redo layout
    
    override init(style:UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(topImageView)
        addSubview(topTitle)
        configurImageView()
        configureTitleLabel()
        setImageConstriants()
        setTitleLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(_ top: Top10ListItem){
        topImageView.image = UIImage(named:(top.image))
        topTitle.text = top.title
    }
    
    func configurImageView(){
        topImageView.layer.cornerRadius = 10
        topImageView.clipsToBounds = true
    }
    
    func configureTitleLabel(){
        topTitle.numberOfLines = 0
        topTitle.adjustsFontSizeToFitWidth = true
    }
    
    func setImageConstriants(){
        topImageView.translatesAutoresizingMaskIntoConstraints = false
        topImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        topImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        topImageView.widthAnchor.constraint(equalTo: topImageView.heightAnchor, multiplier: 16/9).isActive = true
        topImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    func setTitleLabelConstraints(){
        topTitle.translatesAutoresizingMaskIntoConstraints = false
        topTitle.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        topTitle.leadingAnchor.constraint(equalTo: topImageView.trailingAnchor, constant: 20).isActive = true
        topTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        topTitle.heightAnchor.constraint(equalToConstant: 80).isActive = true
    }

}
