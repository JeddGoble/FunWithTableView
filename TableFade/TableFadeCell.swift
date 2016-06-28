//
//  TableFadeCell.swift
//  TableFade
//
//  Created by jgoble52 on 6/27/16.
//  Copyright © 2016 tangital. All rights reserved.
//

import UIKit

class TableFadeCell: UITableViewCell {
    
    @IBOutlet weak var mainCellView: UIView!
    
    @IBOutlet weak var mainCellTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var mainCellLeftConstraint: NSLayoutConstraint!
    @IBOutlet weak var mainCellRightConstraint: NSLayoutConstraint!
    @IBOutlet weak var mainCellBottomConstraint: NSLayoutConstraint!
    
    var topPadding: CGFloat = 0
    var sidePadding: CGFloat = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.mainCellView.layer.cornerRadius = 5
        self.mainCellView.clipsToBounds = true
        
        self.selectionStyle = .None
        
        self.topPadding = mainCellTopConstraint.constant
        self.sidePadding = mainCellLeftConstraint.constant
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        mainCellTopConstraint.constant = topPadding
        mainCellLeftConstraint.constant = sidePadding
        mainCellRightConstraint.constant = sidePadding
        mainCellBottomConstraint.constant = topPadding
        
    }

    
}
