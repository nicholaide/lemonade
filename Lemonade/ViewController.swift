//
//  ViewController.swift
//  Lemonade
//
//  Created by Nicholai de Guzman on 1/9/15.
//  Copyright (c) 2015 Nic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //You have
    @IBOutlet weak var labelMoney: UILabel!
    @IBOutlet weak var labelLemonInventory: UILabel!
    @IBOutlet weak var labelCubeInventory: UILabel!
    
 
    //Purchase
    @IBOutlet weak var labelLemonBuy: UILabel!
    @IBOutlet weak var labelCubeBuy: UILabel!
    
    //Mix
    @IBOutlet weak var labelLemonMix: UILabel!
    @IBOutlet weak var labelCubeMix: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //adding
    @IBAction func buttonLemonBuyAdd(sender: UIButton) {
    }

    @IBAction func buttonCubeBuyAdd(sender: UIButton) {
    }
    
    @IBAction func buttonLemonMixAdd(sender: UIButton) {
    }
    
    @IBAction func buttonCubeMixAdd(sender: UIButton) {
    }
    
    //removing or subtracting
    @IBAction func buttonLemonBuySub(sender: UIButton) {
    }
    
    @IBAction func buttonCubeBuySub(sender: UIButton) {
    }
    
    @IBAction func buttonLemonMixSub(sender: UIButton) {
    }
    
    @IBAction func buttonCubeMixSub(sender: UIButton) {
    }
    
    //main button
    
    @IBAction func buttonStart(sender: UIButton) {
    }

}

