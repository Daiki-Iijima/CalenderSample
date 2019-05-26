//
//  DateManager.swift
//  CalendarSample
//
//  Created by 飯島大樹 on 2019/05/25.
//  Copyright © 2019 Daiki Iijima. All rights reserved.
//

import Foundation

class DateManager
{
    var currentMonthOfDates: [Date] = []   //表記する月の配列
    var selectedDate = Date()
    let daysPerWeek: Int = 7
    var numberOfItems: Int!
    
    //日にち数を取得する
    var daysAcquisition: Int
    {
        if let date = firstDateMonth(), let rangeOfWeeks = Calendar.current.range(of: .weekOfMonth, in: .month, for: date)
        {
            //  月が持つ週の数
            let numberOfWeeks = rangeOfWeeks.count
            
            //  週の数 * 列の数
            numberOfItems = numberOfWeeks * daysPerWeek
            
            return numberOfItems
        }
        
        return 0
    }
    
    //  月の初めの「年、月、日」を取得
    func firstDateMonth() -> Date? {
        
        //  現在選択されている月の「年、月、日」を取得
        var components = Calendar.current.dateComponents([.year,.month,.day], from: selectedDate)
        
        //  その月の1日を取得
        components.day = 1
        
        //  もし、date型に変換した時にnilではなかった場合にfirstDateMonth(Date型)を返す
        if let firstDateMonth = Calendar.current.date(from: components)
        {
            return firstDateMonth
        }
        
        return nil
    }
}
