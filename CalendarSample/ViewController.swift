//
//  ViewController.swift
//  CalendarSample
//
//  Created by 飯島大樹 on 2019/05/25.
//  Copyright © 2019 Daiki Iijima. All rights reserved.
//

import UIKit

extension UIColor
{
    class func lightBlue() ->UIColor
    {
        return UIColor(red: 92.0 / 255, green: 192.0 / 255, blue: 210.0 / 255, alpha: 1.0)
    }
    
    class func lightRed() ->UIColor
    {
        return UIColor(red: 195.0 / 255, green: 123.0 / 255, blue: 175.0 / 255, alpha: 1.0)
    }
}

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    
    let dateManager = DateManager()
    let daysPerWeek: Int = 7
    let cellMargin: CGFloat = 2.0
    var selectedDate = NSDate()
    var today:NSDate!
    let weekArray = ["日","月","火","水","木","金","土"]
    
    
    @IBOutlet weak var headerBackBtn: UIButton!
    
    @IBOutlet weak var headerNextBtn: UIButton!
    
    @IBOutlet weak var headerTitle: UILabel!
    
    @IBOutlet var headerView: UIView!
    
    @IBOutlet weak var calenderCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //CollectionViewのセクション数を返す
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        //2つのセクションを作成する
        return 2;
    }
    
    //セクションに入るcellの個数を返す
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        // Section毎にCellの総数を変える.
        if section == 0 {
            return 7
        } else {
            return dateManager.daysAcquisition
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CalendarCell
        
        return cell
    }

    @IBAction func TapedHeaderNextBtn(_ sender: Any) {
    }
    
    @IBAction func TapedHeaderBackBtn(_ sender: Any) {
    }
}

