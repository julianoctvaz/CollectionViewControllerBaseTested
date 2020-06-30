//
//  CollectionReusableView.swift
//  criandoColletionView
//
//  Created by Juliano Vaz on 30/06/20.
//  Copyright © 2020 Juliano Vaz. All rights reserved.
//

import UIKit

class CollectionReusableView: UICollectionReusableView {
    @IBOutlet weak var settingsButton: UIButton!
    
    func collectionView(_ collectionView: UICollectionView,
                                 viewForSupplementaryElementOfKind kind: String,
                                 at indexPath: IndexPath) -> UICollectionReusableView {
      // 1
//      switch kind {
//      // 2
//      case UICollectionView.elementKindSectionHeader:
//        // 3
        let headerView = collectionView.dequeueReusableSupplementaryView(
            ofKind: kind,
            withReuseIdentifier: "VoceHeaderView",
            for: indexPath) as? CollectionReusableView
//          else {
//            fatalError("Invalid view type")
        

        headerView?.settingsButton.setTitle("Configuracao", for: .normal)
        headerView?.settingsButton.setTitleColor(.black, for: .normal)
//        let searchTerm = searches[indexPath.section].searchTerm
//        headerView.label.text = searchTerm
        return headerView!
//      default:
//        // 4
//        assert(false, "Invalid element type")
      }
//    }
    
}
