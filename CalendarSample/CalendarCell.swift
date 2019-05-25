//
//  CalendarCell.swift
//  CalendarSample
//
//  Created by 飯島大樹 on 2019/05/25.
//  Copyright © 2019 Daiki Iijima. All rights reserved.
//

import UIKit

class CalendarCell : UICollectionViewCell {
    
    var textLabel: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        
        // UILabelを生成
        textLabel = UILabel(frame: CGRect(x: 0,y: 0,width: self.frame.width,height: self.frame.height))
        textLabel.font = UIFont(name: "HiraKAKUProN-W3", size: 12)
        textLabel.textAlignment = NSTextAlignment.center
        
        //Cellに追加
        self.addSubview(textLabel!)
    }
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
    }
}
