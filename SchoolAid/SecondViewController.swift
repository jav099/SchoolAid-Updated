
import UIKit


class SecondViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var currentGrade: UITextField!
    @IBOutlet weak var taskWeight: UITextField!
    @IBOutlet weak var desiredGrade: UITextField!
 
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    
    @IBOutlet weak var gradeLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var desiredLabel: UILabel!
    
    @IBOutlet weak var gradeOutlet: UISlider!
    @IBOutlet weak var weightOutlet: UISlider!
    @IBOutlet weak var desiredOutlet: UISlider!
    
    // @IBAction func gradeAction(_ sender: UISlider) {
    //gradeLabel.text = String(Int(gradeOutlet.value))
    
    //}
    
   // @IBAction func weightAction(_ sender: UISlider) {
   // weightLabel.text = String(Int(weightOutlet.value))
   // }
    
   // @IBAction func desiredAction(_ sender: UISlider) {
   // desiredLabel.text = String(Int(desiredOutlet.value))
   // let aa = Int(gradeOutlet.value)
   // let bb = Int(weightOutlet.value)
   // let cc = Int(desiredOutlet.value)
        
    //let percentagee = bb/100
   // let percentagee2 = 1-percentagee
   // let partt1 = percentagee2
   // let partt11 = partt1 * aa
  //  let xxxx = cc - partt11
  //  let xxxxx = xxxx/percentagee
  //  let ccc = cc
    
   
    //label2.text = ("\(xxxxx)")
   // label4.text = ("\(ccc)")
    
   // }
    
    @IBAction func calculateProjection(_ sender: AnyObject) {
    let a = Double(currentGrade.text!)
    let b = Double(taskWeight.text!)
    let c = Double(desiredGrade.text!)
    
    let percentage = b!/100
    let percentage2 = 1 - percentage
    var part1 = percentage2
    part1 = part1 * a!
    var xxx = c! - part1
    xxx = xxx/percentage
    let cc = c!
    
       label2.text = "\(xxx)"
       label4.text = "\(cc)"
    }
    @IBOutlet weak var calcButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        self.calcButton.layer.cornerRadius = 12
    }
    
  

}
