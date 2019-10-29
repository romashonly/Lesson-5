//
//  TableViewCell.swift
//  BlocksSwift
//
//  Created by Ильдар Залялов on 16/10/2019.
//  Copyright © 2019 Ildar Zalyalov. All rights reserved.
//

import UIKit

protocol Delegate: AnyObject {
    func someMethod()
}

class TableViewCell: UITableViewCell {

    weak var delegate: Delegate?
    
    var didPressAction: (() -> Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func didPressAction(_ button: UIButton) {
        
        delegate?.someMethod()
        
        didPressAction?()
    }
}
