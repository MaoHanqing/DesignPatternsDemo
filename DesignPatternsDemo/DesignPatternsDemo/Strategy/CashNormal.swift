//
//  CashNormal.swift
//  DesignPatternsDemo
//
//  Created by Guo Kebing on 2017/4/5.
//  Copyright © 2017年 MHQ. All rights reserved.
//
import UIKit

    class CashNormal: CashSuper {
        override func acceptCash(money: Double) -> Double {
            return money
        }
}
