//
//  StrategyViewController.swift
//  DesignPatternsDemo
//
//  Created by Guo Kebing on 2017/4/1.
//  Copyright © 2017年 MHQ. All rights reserved.
//

import UIKit

class StrategyViewController: UIViewController {

    @IBOutlet weak var itemSelected: UISegmentedControl!
    @IBOutlet weak var moneyTF: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Result(_ sender: UIButton) {
        
        let money = Double(moneyTF.text!)
        
        if money == nil {
            
            self.resultLabel.text = "请输入正确的金额"
            
            return
        }
        
        let cash = CashContext(cashType: CashType(rawValue: self.itemSelected.selectedSegmentIndex)!)
        
        self.resultLabel.text = "\(cash.getResult(with: money!))"
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
