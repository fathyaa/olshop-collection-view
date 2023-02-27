//
//  DetailProductViewController.swift
//  olshop-collection-view
//
//  Created by Phincon on 27/02/23.
//

import UIKit

class DetailProductViewController: UIViewController {
    
    var product : Product?
    
    @IBOutlet weak var detailProductTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupTable()
        title = product!.productName
    }
    
    func setupTable() {
        detailProductTable.delegate = self
        detailProductTable.dataSource = self
        detailProductTable.register(ProductThumbnailViewCell.self, forCellReuseIdentifier: ProductThumbnailViewCell.identifier)
        
        detailProductTable.register(DescriptionProductTableViewCell.self, forCellReuseIdentifier: DescriptionProductTableViewCell.identifier)
        
        detailProductTable.separatorStyle = .none
    }

}

extension DetailProductViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            guard let cell = detailProductTable.dequeueReusableCell(withIdentifier: ProductThumbnailViewCell.identifier, for: indexPath) as? ProductThumbnailViewCell else{return UITableViewCell()}
            cell.thumbnailImage.image = UIImage(named: product!.image)
            cell.colorOne.backgroundColor = UIColor(rgb: product!.color1)
            cell.colorTwo.backgroundColor = UIColor(rgb: product!.color2)
            cell.colorThree.backgroundColor = UIColor(rgb: product!.color3)
            cell.colorFour.backgroundColor = UIColor(rgb: product!.color4)
            cell.setupAddSubViews()
            cell.setupLayout()
            return cell
        case 1:
            guard let cell = detailProductTable.dequeueReusableCell(withIdentifier: DescriptionProductTableViewCell.identifier, for: indexPath) as? DescriptionProductTableViewCell else{return UITableViewCell()}
            cell.setupDescLabel()
            cell.descLabel.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ut massa blandit, mollis neque nec, congue nulla. Suspendisse lectus lacus, accumsan vitae leo vitae, pulvinar varius urna. Aliquam erat volutpat. Integer at felis eu nunc mollis lacinia nec eu odio. Nam placerat, nibh eu gravida viverra, sapien orci tempor lacus, id posuere mi ligula eget nisl. Nullam convallis sagittis sagittis. Praesent et aliquam velit. Praesent molestie mi libero, ut euismod libero semper id. Suspendisse rutrum ex nunc, in elementum mi aliquam ac. Suspendisse pellentesque a mauris vitae ultricies. Pellentesque vestibulum urna eu faucibus gravida. Nam efficitur consectetur velit non cursus. Integer in nunc rutrum, porta sapien quis, rutrum nunc. Pellentesque tortor lectus, consectetur nec ipsum non, accumsan rutrum leo.r"
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
}
