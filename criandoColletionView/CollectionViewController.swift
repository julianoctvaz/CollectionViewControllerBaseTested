//
//  CollectionViewController.swift
//  criandoColletionView
//
//  Created by Juliano Vaz on 29/06/20.
//  Copyright © 2020 Juliano Vaz. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {
    
    let dataSource : [String] = ["Usa", "Brazil", "Nigeria","Morrocos","India","Japao","Bolivia"]

    override func viewDidLoad() {
        super.viewDidLoad()

    

        
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = UICollectionViewCell()
        
       if let countryCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? CollectionViewCell { //esse Cell marco la no na celula... resable indetifier
            countryCell.configure(with: dataSource[indexPath.row])
        
        cell = countryCell
                }
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Selected Country: \(dataSource[indexPath.row])")
    }

  
  

}
