//
//  CashReturn.swift
//  DesignPatternsDemo
//
//  Created by Guo Kebing on 2017/4/5.
//  Copyright © 2017年 MHQ. All rights reserved.
//

import UIKit

class CashReturn: CashSuper {
    private var moneyCondition  = 0.0
    private var moneyReturn     = 0.0
    init( moneyCondition : Double , moneyReturn : Double) {
        self.moneyCondition = moneyCondition
        self.moneyReturn = moneyReturn
    }
    override func acceptCash(money: Double) -> Double {
        var result = money
        
        if result >= moneyCondition {
            result = money - ceil(money/moneyCondition)*moneyReturn
        }
        
        return result
    }
}
