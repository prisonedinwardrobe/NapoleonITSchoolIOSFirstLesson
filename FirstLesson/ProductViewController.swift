//
//  ProductViewController.swift
//  FirstLesson
//
//  Created by alexey on 4/21/18.
//  Copyright © 2018 CSU. All rights reserved.
//

import UIKit

struct Product {
    let imageName   : String
    let title       : String
    let price       : Float
}

class ProductViewController: UIViewController {
    @IBOutlet var mainImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    
    public var product: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewController()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        //loadProduct()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    @IBAction func actionBuy(_ sender: UIButton) {
        
    }
    
    func setupViewController() {
        product = product ?? Product(imageName: "image-product", title: "iPhone 6S Rose Gold 64GB почти новый все чеки", price: 18500)
        
        guard let product = product else {
            return
        }
        
        title = product.title
        mainImageView.image = UIImage(named: product.imageName)
        titleLabel.text = product.title
        priceLabel.text = "\(product.price) ₽"
    }
    
    
    func loadProduct() {
        //в SetupViewController заданы параметры дефолтного Product
        //здесь можно в будущем задать парметры кастомного Product или загрузку его из сети
    }
    
}
