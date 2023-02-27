//
//  ListProductCollectionViewCell.swift
//  olshop-collection-view
//
//  Created by Phincon on 27/02/23.
//

import UIKit

class ListProductCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "ListProductCollectionViewCell"
    

    @IBOutlet weak var productListView: UIView!{
        didSet{
            productListView.layer.cornerRadius = 8
            productListView.layer.masksToBounds = true
            productListView.layer.borderWidth = 2
//            productListView.layer.borderColor = UIColor(named: "borderColor")?.cgColor
            productListView.layer.borderColor = UIColor(rgb: 0x1C3D93).cgColor
        }
    }
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var wishlistButton: UIButton!
    @IBOutlet weak var colorOne: UIImageView!{
        didSet{
            colorOne.layer.borderWidth = 1
            colorOne.layer.cornerRadius = 3
            colorOne.layer.borderColor = UIColor(named: "borderColor")?.cgColor
        }
    }
    @IBOutlet weak var colorTwo: UIImageView!{
        didSet{
            colorTwo.layer.borderWidth = 1
            colorTwo.layer.cornerRadius = 3
            colorTwo.layer.borderColor = UIColor(named: "borderColor")?.cgColor
        }
    }
    @IBOutlet weak var colorThree: UIImageView!{
        didSet{
            colorThree.layer.borderWidth = 1
            colorThree.layer.cornerRadius = 3
            colorThree.layer.borderColor = UIColor(named: "borderColor")?.cgColor
        }
    }
    @IBOutlet weak var colorFour: UIImageView!{
        didSet{
            colorFour.layer.borderWidth = 1
            colorFour.layer.cornerRadius = 3
            colorFour.layer.borderColor = UIColor(named: "borderColor")?.cgColor
        }
    }
    @IBOutlet weak var addColorButton: UIButton!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
