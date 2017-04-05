//
//  AddOperation.swift
//  DesignPatternsDemo
//
//  Created by Guo Kebing on 2017/3/31.
//  Copyright © 2017年 MHQ. All rights reserved.
//

import UIKit

class AddOperation: BasicOperation {
    override func result() -> Double {
        return numA + numB
    }
}
class MinusOperation: BasicOperation {
    override func result() -> Double {
        return numA - numB
    }
}
class MultiplyOperation: BasicOperation {
    override func result() -> Double {
        return numA * numB
    }
}
class DividedOperation: BasicOperation {
    override func result() -> Double {
//        assert(numB != 0, "除数不能为0")
        if numB == 0 {
            let alert =  UIAlertController(title:nil, message: "除数不能为0", preferredStyle:.alert)
           UIApplication.shared.keyWindow?.rootViewController?.present(alert, animated: true, completion: nil)
           Timer.scheduledTimer(withTimeInterval: 0.25, repeats: false, block: { (timer) in
                alert.dismiss(animated:true, completion: nil)
                timer.invalidate();
            })
            return 0;
        }
        
        return numA / numB
    }
}
