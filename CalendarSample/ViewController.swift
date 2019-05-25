//
//  ViewController.swift
//  CalendarSample
//
//  Created by 飯島大樹 on 2019/05/25.
//  Copyright © 2019 Daiki Iijima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var headerBackBtn: UIButton!
    
    @IBOutlet weak var headerNextBtn: UIButton!
    
    @IBOutlet weak var headerTitle: UILabel!
    
    @IBOutlet var headerView: UIView!
    
    @IBOutlet weak var calenderCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func TapedHeaderNextBtn(_ sender: Any) {
    }
    
    @IBAction func TapedHeaderBackBtn(_ sender: Any) {
    }
}

