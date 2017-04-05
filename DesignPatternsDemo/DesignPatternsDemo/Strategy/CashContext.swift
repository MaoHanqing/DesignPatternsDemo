//
//  CashContext.swift
//  DesignPatternsDemo
//
//  Created by Guo Kebing on 2017/4/5.
//  Copyright © 2017年 MHQ. All rights reserved.
//

import UIKit

enum CashType:Int{
    case NormalCashType = 0,RebateCashType,ReturnCashType
}

class CashContext: NSObject {
    var cash : CashSuper
    init( cashType : CashType) {
        
        switch cashType {
            
        case .NormalCashType:
          
            cash = CashNormal()
            
        case .RebateCashType:
            
            cash = CashRebate(moneyRebate: 0.8)
            
        case .ReturnCashType:
            
            cash = CashReturn(moneyCondition: 300, moneyReturn: 100)
            
        }
    }
    func getResult(with money:Double) -> Double {
        return self.cash.acceptCash(money: money)
    }
}
