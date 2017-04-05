//
//  CashRebate.swift
//  DesignPatternsDemo
//
//  Created by Guo Kebing on 2017/4/5.
//  Copyright © 2017年 MHQ. All rights reserved.
//

import UIKit

class CashRebate: CashSuper {

    var moneyRebate = 0.0;
    
    init(moneyRebate: Double ) {
        self.moneyRebate = moneyRebate;
    }
    override func acceptCash(money: Double) -> Double {
        return self.moneyRebate * money
    }
   
    
}

class aaaa: NSObject {
    
    
    
    
    
    
    
    
    
}
