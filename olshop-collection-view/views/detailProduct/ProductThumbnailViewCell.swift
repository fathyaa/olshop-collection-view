//
//  DetailProductTableViewCell.swift
//  olshop-collection-view
//
//  Created by Phincon on 27/02/23.
//

import UIKit

class ProductThumbnailViewCell: UITableViewCell {
    
    static let identifier = "Product Thumbnail"

    var thumbnailImage: UIImageView = {
        let iv = UIImageView()
        return iv
    }()
    
    var colorOne: UIImageView = {
        let iv = UIImageView()
        return iv
    }()
    
    var colorTwo: UIImageView = {
        let iv = UIImageView()
        return iv
    }()
    
    var colorThree: UIImageView = {
        let iv = UIImageView()
        return iv
    }()
    
    var colorFour: UIImageView = {
        let iv = UIImageView()
        return iv
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupAddSubViews()
        setupLayout()
    }
    
    func setupAddSubViews() {
        self.addSubview(thumbnailImage)
        self.addSubview(colorOne)
        self.addSubview(colorTwo)
        self.addSubview(colorThree)
        self.addSubview(colorFour)
    }
    
    func setupLayout(){
        thumbnailImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            thumbnailImage.topAnchor.constraint(equalTo: self.topAnchor),
            thumbnailImage.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            thumbnailImage.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            thumbnailImage.heightAnchor.constraint(equalToConstant: 204)
        ])
        thumbnailImage.contentMode = .scaleAspectFill
        thumbnailImage.clipsToBounds = true
        
        colorOne.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            colorOne.topAnchor.constraint(equalTo: self.thumbnailImage.bottomAnchor, constant: 21),
            colorOne.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            colorOne.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -24),
            colorOne.widthAnchor.constraint(equalToConstant: 18),
            colorOne.heightAnchor.constraint(equalToConstant: 18)
        ])
        colorOne.layer.borderWidth = 1
        colorOne.layer.cornerRadius = 3
        
        colorTwo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            colorTwo.leadingAnchor.constraint(equalTo: colorOne.trailingAnchor, constant: 8),
            colorTwo.topAnchor.constraint(equalTo: colorOne.topAnchor),
            colorTwo.widthAnchor.constraint(equalToConstant: 18),
            colorTwo.heightAnchor.constraint(equalToConstant: 18)
        ])
        colorTwo.layer.borderWidth = 1
        colorTwo.layer.cornerRadius = 3
        
        colorThree.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            colorThree.leadingAnchor.constraint(equalTo: colorTwo.trailingAnchor, constant: 8),
            colorThree.topAnchor.constraint(equalTo: colorOne.topAnchor),
            colorThree.widthAnchor.constraint(equalToConstant: 18),
            colorThree.heightAnchor.constraint(equalToConstant: 18)

        ])
        colorThree.layer.borderWidth = 1
        colorThree.layer.cornerRadius = 3
        
        colorFour.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            colorFour.leadingAnchor.constraint(equalTo: colorThree.trailingAnchor, constant: 8),
            colorFour.topAnchor.constraint(equalTo: colorOne.topAnchor),
            colorFour.widthAnchor.constraint(equalToConstant: 18),
            colorFour.heightAnchor.constraint(equalToConstant: 18)
        ])
        colorFour.layer.borderWidth = 1
        colorFour.layer.cornerRadius = 3
        
    }
}
