//
//  DescriptionProductTableViewCell.swift
//  olshop-collection-view
//
//  Created by Phincon on 27/02/23.
//

import UIKit

class DescriptionProductTableViewCell: UITableViewCell {
    
    static let identifier = "descriptionProductCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    var descLabel: UILabel = {
        let lb = UILabel()
        return lb
    }()
    
    func setupDescLabel() {
        self.addSubview(descLabel)
        descLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            descLabel.topAnchor.constraint(equalTo: self.topAnchor),
            descLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            descLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24)
        ])
        descLabel.numberOfLines = 0
        descLabel.font = UIFont.systemFont(ofSize: 16)
        descLabel.textColor = UIColor(named: "borderColor")
        descLabel.textAlignment = .justified
    }

}
