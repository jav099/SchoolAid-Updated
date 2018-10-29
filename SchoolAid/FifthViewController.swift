//
//  FifthViewController.swift
//  SchoolAid
//
//  Created by Contreras Tenorio Javier on 5/27/17.
//  Copyright © 2017 Contreras Tenorio Javier. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {
    @IBOutlet weak var sliderLabel0: UILabel!
    @IBOutlet weak var sliderLabel1: UILabel!
    @IBOutlet weak var slider0: UISlider!
    @IBOutlet weak var slider1: UISlider!

    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var initialpages: UITextField!
    @IBOutlet weak var initialdays: UITextField!
    @IBOutlet weak var initialminutes: UITextField!
    @IBOutlet weak var answer1: UILabel!
    @IBOutlet weak var answer2: UILabel!
    
    @IBAction func slider(_ sender: UISlider) {
    
    sliderLabel.text = String(Int(sender.value))
        let iipages = Double(slider0.value)
        let iidays = Double(slider1.value)
        let answ1 = iipages/iidays
        let roundansw1 = Double(round(10*answ1)/10)
        answer1.text = "\(roundansw1)"
        let svalue = Double(sliderV.value)
        let answ2 = svalue * iipages
        let answ3 = answ2/iidays
        let answ4 = answ3/60
        let answ5 = Double(answ4)
        let answ6 = Double(round(10*answ5)/10)
        answer2.text = ("\(answ6)")

       
    }
   
    @IBAction func sliderAction0(_ sender: UISlider) {
     sliderLabel0.text = String(Int(sender.value))

    }
       
    @IBAction func sliderAction1(_ sender: UISlider) {
    sliderLabel1.text = String(Int(sender.value))
        let iipages = Int(slider0.value)
        let iidays = Int(slider1.value)
        
        let answ1 = iipages/iidays
        answer1.text = "\(answ1)"

    }
    
    @IBOutlet weak var sliderV: UISlider!
    
    @IBAction func calculate1(_ sender: Any) {
    let ipages = Int(initialpages.text!)
    let idays = Int(initialdays.text!)
    
    let answ1 = ipages!/idays!
    answer1.text = "\(answ1)"
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
    

}
