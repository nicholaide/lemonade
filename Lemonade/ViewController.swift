//
//  ViewController.swift
//  Lemonade
//
//  Created by Nicholai de Guzman on 1/9/15.
//  Copyright (c) 2015 Nic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //constants
    let lemonPrice = 2
    let cubePrice = 1
    
    //variables for computation
    var lemonSupply = 1
    var cubeSupply = 1
    var cashSupply = 10
    
    var lemonBuy = 0
    var cubeBuy = 0
    var lemonMix = 0
    var cubeMix = 0

    //You have (supplies)
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
        if cashSupply - lemonPrice >= 0 {
            cashSupply -= lemonPrice
            lemonSupply++
            lemonBuy++
            
            updateAllLabels()
            
        }
        
    }

    @IBAction func buttonCubeBuyAdd(sender: UIButton) {
        if cashSupply - cubePrice >= 0 {
            cashSupply -= cubePrice
            cubeSupply++
            cubeBuy++

            updateAllLabels()

        }

    }
    
    @IBAction func buttonLemonMixAdd(sender: UIButton) {
        if lemonSupply - 1 >= 0 {
            lemonSupply--
            lemonMix++
         
            updateAllLabels()
        }

    }
    
    @IBAction func buttonCubeMixAdd(sender: UIButton) {
        if cubeSupply - 1 >= 0 {
            cubeSupply--
            cubeMix++
            updateAllLabels()
        }
    
    }
    
    //removing or subtracting functions 
    
    @IBAction func buttonLemonBuySub(sender: UIButton) {
        //need at least one lemon I think!
        if lemonSupply - 1 >= 1 {
            lemonSupply--
            cashSupply += lemonPrice
            lemonBuy--
            
            updateAllLabels()
        }
       
    }
    
    @IBAction func buttonCubeBuySub(sender: UIButton) {
        //need at least one lemon I think!
        if cubeSupply - 1 >= 1 {
            cubeSupply--
            cashSupply += cubePrice
            cubeBuy--
            
            updateAllLabels()

        }
       
        
    }
    
    @IBAction func buttonLemonMixSub(sender: UIButton) {
        if lemonMix - 1 >= 0 {
            lemonSupply++
            lemonMix--
            
            updateAllLabels()
        }
    }
    
    @IBAction func buttonCubeMixSub(sender: UIButton) {
        if cubeMix - 1 >= 0 {
            cubeSupply++
            cubeMix--
            
            updateAllLabels()
        }
    }
    
    //main button
    @IBAction func buttonStart(sender: UIButton) {
    }
    
    func updateAllLabels() {
        //lemon
        labelLemonInventory.text = "\(lemonSupply)" + " Lemons"
        labelLemonBuy.text = "\(lemonBuy)"
        labelLemonMix.text = "\(lemonMix)"
        
        
        //cubes
        labelCubeInventory.text = "\(cubeSupply)" + " Ice Cubes"
        labelCubeBuy.text = "\(cubeBuy)"
        labelCubeMix.text = "\(cubeMix)"
        
        
        //cash
        labelMoney.text = "$" + "\(cashSupply)"
        
    }

}

