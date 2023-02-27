//
//  ViewController.swift
//  olshop-collection-view
//
//  Created by Phincon on 27/02/23.
//

import UIKit

class ListViewController: UIViewController {
    
    @IBOutlet weak var listCollectionView: UICollectionView!
    
    var products: [Product] = [
        Product(image: "baju", productName: "Baju baru", productPrice: 50_000, color1: 0x138A36, color2: 0xEDE6E3, color3: 0x2E294E, color4: 0xEED8D4),
        Product(image: "celana", productName: "Celana panjang", productPrice: 100_000, color1: 0x78D5D7, color2: 0x63D2FF, color3: 0x2081C3, color4: 0xBED8D4),
        Product(image: "topi", productName: "Topi", productPrice: 20_0000, color1: 0x90323D, color2: 0xD9CAB3, color3: 0xBC8034, color4: 0x8C7A6B),
        Product(image: "sepatu", productName: "Sepatu", productPrice: 300_000, color1: 0x6C698D, color2: 0xD4D2D5, color3: 0xBFAFA6, color4: 0xAA968A),
        Product(image: "jamtangan", productName: "Jam tangan", productPrice: 20_000, color1: 0xF5B700, color2: 0x00A1E4, color3: 0xDC0073, color4: 0x89FC00),
        Product(image: "masker", productName: "Masker pelindung wajah", productPrice: 50_000, color1: 0xFA2B1F, color2: 0xEDAE49, color3: 0xF9DF74, color4: 0xF9EDCC)
    ]
    
    var storeLogo : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "logo")
        img.translatesAutoresizingMaskIntoConstraints = false
        img.clipsToBounds = true
        img.contentMode = .scaleAspectFit
        return img
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerListProduct()
        setupNavigation()
    }
    
    @objc func menuClicked(){
        print("ok")
    }
    
    func setupNavigation(){
        self.navigationItem.rightBarButtonItems = [UIBarButtonItem(image: UIImage(systemName: "line.3.horizontal")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(menuClicked))]
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(customView: storeLogo)
                
                NSLayoutConstraint.activate([
                    storeLogo.heightAnchor.constraint(equalToConstant: 60),
                    storeLogo.widthAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    func registerListProduct(){
        listCollectionView.register(UINib(nibName: "ListProductCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: ListProductCollectionViewCell.identifier)
        listCollectionView.delegate = self
        listCollectionView.dataSource = self
    }
}

extension ListViewController : UICollectionViewDelegateFlowLayout, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = listCollectionView.dequeueReusableCell(withReuseIdentifier: ListProductCollectionViewCell.identifier, for: indexPath) as? ListProductCollectionViewCell else { return UICollectionViewCell() }
        cell.productImage.image = UIImage(named: products[indexPath.row].image)
        cell.productName.text = products[indexPath.row].productName
        cell.productPrice.text = "Rp\(products[indexPath.row].productPrice)"
        cell.colorOne.backgroundColor = UIColor(rgb: products[indexPath.row].color1)
        cell.colorTwo.backgroundColor = UIColor(rgb: products[indexPath.row].color2)
        cell.colorThree.backgroundColor = UIColor(rgb: products[indexPath.row].color3)
        cell.colorFour.backgroundColor = UIColor(rgb: products[indexPath.row].color4)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "detailVC") as! DetailProductViewController
        viewController.product = products[indexPath.row]
        navigationController?.pushViewController(viewController, animated: true)
        
    }
}
