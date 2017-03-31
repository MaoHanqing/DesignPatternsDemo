//
//  OperationFactoty.swift
//  DesignPatternsDemo
//
//  Created by Guo Kebing on 2017/3/31.
//  Copyright © 2017年 MHQ. All rights reserved.
//

import UIKit
enum operationType: Int {
    case AddOperationType = 0,MinusOperationType,MultiplyOperationType,DividedOperationType
}

class OperationFactoty: NSObject {
    private var operate:BasicOperation
    init(operationType type:operationType) {
        switch type {
        case .AddOperationType :
            operate = AddOperation()
        case .MinusOperationType :
            operate = MinusOperation()
        case .MultiplyOperationType :
            operate = MultiplyOperation()
        case .DividedOperationType :
            operate = DividedOperation()
        }
    }
    
    
    func result(with NumA:Double, NumB:Double ) -> Double {
        operate.numA = NumA
        operate.numB = NumB
        
        return operate.result()
    }
}
