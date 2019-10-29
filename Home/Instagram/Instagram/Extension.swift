//
//  Extension.swift
//  Instagram
//
//  Created by Роман Шуркин on 29/10/2019.
//  Copyright © 2019 Роман Шуркин. All rights reserved.
//

import Foundation
import UIKit

extension UICollectionView {
    
    /// Method for register cell
    /// - Parameter cell: cell for register
    func registerCell(_ cell: CustomCell.Type) {
        
        register(cell.cellNib(), forCellWithReuseIdentifier: cell.cellIden())
    }
}
