//
//  TableFadeView.swift
//  TableFade
//
//  Created by jgoble52 on 6/27/16.
//  Copyright © 2016 tangital. All rights reserved.
//

import UIKit

class TableFadeView: UITableView, UIScrollViewDelegate, UITableViewDelegate, UITableViewDataSource {

    var cellHeight: CGFloat = 150.0
    var numberOfRows: Int = 20
    var initialTopPadding: CGFloat = 5
    var initialSidePadding: CGFloat = 10
    
    var reusableCell: TableFadeCell? = nil
    
    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
        
        self.delegate = self
        self.dataSource = self
        
        self.separatorStyle = .None
        
        let nib = UINib(nibName: "TableFadeCell", bundle: nil)
        self.registerNib(nib, forCellReuseIdentifier: "TableFadeCell")
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        
        if let topCell = self.visibleCells.first as? TableFadeCell {
            
            let remainder = cellHeight - self.contentOffset.y % self.cellHeight
            
            if remainder > initialTopPadding {
                topCell.mainCellTopConstraint.constant = cellHeight - remainder
            } else {
                topCell.mainCellTopConstraint.constant = initialTopPadding
                topCell.mainCellBottomConstraint.constant = initialTopPadding
            }
            
            let sides = (topCell.frame.width / 2) * ((cellHeight - remainder) / cellHeight)
            
            if sides > initialSidePadding {
                topCell.mainCellLeftConstraint.constant = sides
                topCell.mainCellRightConstraint.constant = sides
            } else {
                topCell.mainCellLeftConstraint.constant = initialSidePadding
                topCell.mainCellRightConstraint.constant = initialSidePadding
            }
        }
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.numberOfRows
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = TableFadeCell()
        
        cell = self.dequeueReusableCellWithIdentifier("TableFadeCell") as! TableFadeCell
        
        return cell
        
    }
    
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        return cellHeight
    }
}
