//
//  CollectionViewCell.swift
//  criandoColletionView
//
//  Created by Juliano Vaz on 29/06/20.
//  Copyright © 2020 Juliano Vaz. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet private weak var countryNameLabel: UILabel!
    
    func configure(with countryName: String){
        countryNameLabel.text = countryName
        countryNameLabel.textColor = .black
    }

    @IBAction func tapButton (){
        
        print("tocou o butao")
    }

}
