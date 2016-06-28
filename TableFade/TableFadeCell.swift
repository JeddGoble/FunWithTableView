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
    
    var initialTopConstraint: NSLayoutConstraint?
    var initialLeftConstraint: NSLayoutConstraint?
    var initialRightConstraint: NSLayoutConstraint?
    var initialBottomConstraint: NSLayoutConstraint?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        initialTopConstraint = mainCellTopConstraint
        initialLeftConstraint = mainCellLeftConstraint
        initialRightConstraint = mainCellRightConstraint
        initialBottomConstraint = mainCellBottomConstraint
        
        self.mainCellView.layer.cornerRadius = 5
        self.mainCellView.clipsToBounds = true
        
        self.selectionStyle = .None
        
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        mainCellTopConstraint = initialTopConstraint
        mainCellLeftConstraint = initialLeftConstraint
        mainCellRightConstraint = initialRightConstraint
        mainCellBottomConstraint = initialBottomConstraint
        
        self.setNeedsLayout()
    }

    
}
