//
//  FourthViewController.swift
//  SchoolAid
//
//  Created by Contreras Tenorio Javier on 5/27/17.
//  Copyright © 2017 Contreras Tenorio Javier. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var taskw0: UITextField!
    @IBOutlet weak var taskg0: UITextField!
    @IBOutlet weak var taskw1: UITextField!
    @IBOutlet weak var taskg1: UITextField!
    @IBOutlet weak var finalgrade1: UILabel!
    @IBOutlet weak var taskw2: UITextField!
    @IBOutlet weak var taskg2: UITextField!
    @IBOutlet weak var finalgrade2: UILabel!
    @IBOutlet weak var taskw3: UITextField!
    @IBOutlet weak var taskg3: UITextField!
    @IBOutlet weak var finalgrade3: UILabel!
    @IBOutlet weak var taskw4: UITextField!
    @IBOutlet weak var taskg4: UITextField!
    @IBOutlet weak var finalgrade4: UILabel!
    @IBOutlet weak var taskw5: UITextField!
    @IBOutlet weak var taskg5: UITextField!
    @IBOutlet weak var finalgrade5: UILabel!
   
    
    
    
    var taskweight = [Double]()
    var taskgrade = [Double]()
    
    @IBAction func calculate0(_ sender: Any) {
    let tw0 = Double(taskw0.text!)
    let tg0 = Double(taskg0.text!)
    
    taskweight.append(tw0!)
    taskgrade.append(tg0!)
    }
    
    ////////////////

    @IBAction func calculate2(_ sender: Any) {
    let tw1 = Double(taskw1.text!)
    let tg1 = Double(taskg1.text!)
    let tw0 = Double(taskw0.text!)
    let tg0 = Double(taskg0.text!)
    taskweight.append(tw1!)
    taskgrade.append(tg1!)

    let result = (tg0! * tw0! + tg1! * tw1!)/(tw1!+tw0!)
    
    print (result)
    finalgrade1.text = "\(result)"
        
    }
    
   ////////////////////
    
    @IBAction func calculate3(_ sender: Any) {
        let tw1 = Double(taskw1.text!)
        let tg1 = Double(taskg1.text!)
        let tw0 = Double(taskw0.text!)
        let tg0 = Double(taskg0.text!)
        let tw2 = Double(taskw2.text!)
        let tg2 = Double(taskg2.text!)
        taskweight.append(tw2!)
        taskgrade.append(tg2!)
        let result = (tg0! * tw0! + tg1! * tw1! + tw2! * tg2!)/(tw1!+tw0! + tw2!)
finalgrade2.text = "\(result)"
    }

    /////////////////////
    
    @IBAction func calculate4(_ sender: Any) {
        let tw1 = Double(taskw1.text!)
        let tg1 = Double(taskg1.text!)
        let tw0 = Double(taskw0.text!)
        let tg0 = Double(taskg0.text!)
        let tw2 = Double(taskw2.text!)
        let tg2 = Double(taskg2.text!)
        let tw3 = Double(taskw3.text!)
        let tg3 = Double(taskg3.text!)
        taskweight.append(tw3!)
        taskgrade.append(tg3!)
     let result = (tg0! * tw0! + tg1! * tw1! + tw2! * tg2! + tw3! * tg3!)/(tw1! + tw0! + tw2! + tw3!)
        finalgrade3.text = "\(result)"
    }
    
    /////////////////////////
    
    
    @IBAction func calculate5(_ sender: Any) {
    
    let tw1 = Double(taskw1.text!)
    let tg1 = Double(taskg1.text!)
    let tw0 = Double(taskw0.text!)
    let tg0 = Double(taskg0.text!)
    let tw2 = Double(taskw2.text!)
    let tg2 = Double(taskg2.text!)
    let tw3 = Double(taskw3.text!)
    let tg3 = Double(taskg3.text!)
    let tw4 = Double(taskw4.text!)
    let tg4 = Double(taskg4.text!)
    taskweight.append(tw4!)
    taskgrade.append(tg4!)
    let result = (tg0! * tw0! + tg1! * tw1! + tw2! * tg2! + tw3! * tg3! + tg4! * tw4!)/(tw1! + tw0! + tw2! + tw3! + tw4!)
    finalgrade4.text = "\(result)"
    }
    
    ////////////////////////
    
    @IBAction func calculate6(_ sender: Any) {
        let tw1 = Double(taskw1.text!)
        let tg1 = Double(taskg1.text!)
        let tw0 = Double(taskw0.text!)
        let tg0 = Double(taskg0.text!)
        let tw2 = Double(taskw2.text!)
        let tg2 = Double(taskg2.text!)
        let tw3 = Double(taskw3.text!)
        let tg3 = Double(taskg3.text!)
        let tw4 = Double(taskw4.text!)
        let tg4 = Double(taskg4.text!)
        let tg5 = Double(taskg5.text!)
        let tw5 = Double(taskw5.text!)
        taskweight.append(tw5!)
        taskgrade.append(tg5!)
        let result = (tg0! * tw0! + tg1! * tw1! + tw2! * tg2! + tw3! * tg3! + tg4! * tw4! + tw5! * tg5!)/(tw1! + tw0! + tw2! + tw3! + tw4! + tw5!)
        finalgrade4.text = "\(result)"
        
    }
    
    @IBOutlet weak var calcSave: UIButton!
    @IBOutlet weak var calcSave2: UIButton!
    @IBOutlet weak var calcSave3: UIButton!
    @IBOutlet weak var calcSave4: UIButton!
    @IBOutlet weak var calcSave5: UIButton!
    @IBOutlet weak var calcSave6: UIButton!
    @IBOutlet weak var calcSave7: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        self.calcSave.layer.cornerRadius = 12
        self.calcSave2.layer.cornerRadius = 12
        self.calcSave3.layer.cornerRadius = 12
        self.calcSave4.layer.cornerRadius = 12
        self.calcSave5.layer.cornerRadius = 12
        self.calcSave6.layer.cornerRadius = 12
        self.calcSave7.layer.cornerRadius = 12
        
    }
}
