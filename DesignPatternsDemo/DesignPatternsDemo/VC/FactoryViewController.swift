//
//  FactoryViewController.swift
//  DesignPatternsDemo
//
//  Created by Guo Kebing on 2017/3/31.
//  Copyright © 2017年 MHQ. All rights reserved.
//

import UIKit

class FactoryViewController: UIViewController {

    @IBOutlet weak var numATF: UITextField!
    @IBOutlet weak var numBTF: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func resultAction(_ sender: UIButton) {
        var numA = 0.0
        var numB = 0.0
        if (numATF) == nil {
            
        }
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
