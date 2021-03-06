//
//  MineTableViewCell.swift
//  MarcBiliBili
//
//  Created by Nie on 16/2/26.
//  Copyright © 2016年 Nie. All rights reserved.
//

import UIKit
class MineTableViewCell: UITableViewCell {

//    static private let identifier = "CellID"
//    
//    class func cellFor(tableView: UITableView) -> MineTableViewCell {
//        
//        var cell = tableView.dequeueReusableCellWithIdentifier(identifier) as? MineTableViewCell
//        
//        if cell == nil {
//            cell = MineTableViewCell(style: .Default, reuseIdentifier: identifier)
//        }
//        
//        return cell!
//    }
    
    let bottomLine = UIView()
    private lazy var iconImageView = UIImageView()
    private lazy var titleLabel = UILabel()
    private lazy var arrowView = UIImageView()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        iconImageView.frame = CGRectMake(15, 10, 24, 24)
        iconImageView.image = UIImage(named: "ic_star_black_24dp1.png")
        contentView.addSubview(iconImageView)
        
        titleLabel.textColor = UIColor.blackColor()
        titleLabel.font = UIFont.systemFontOfSize(16)
        titleLabel.alpha = 0.8
        titleLabel.frame = CGRectMake(60, 23/2, 100, 21)
        titleLabel.text = "关注"
        contentView.addSubview(titleLabel)
        
        bottomLine.backgroundColor = UIColor.grayColor()
        bottomLine.alpha = 0.15
        contentView.addSubview(bottomLine)
        
        arrowView.image = UIImage(named: "icon_go")
        arrowView.frame = CGRectMake(SCREEN_WIDTH-30, 17, 5, 10)
        contentView.addSubview(arrowView)
        
        selectionStyle = UITableViewCellSelectionStyle.None
        
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
