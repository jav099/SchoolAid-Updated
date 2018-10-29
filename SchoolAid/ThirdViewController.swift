//
//  ThirdViewController.swift
//  SchoolAid
//
//  Created by Contreras Tenorio Javier on 5/26/17.
//  Copyright © 2017 Contreras Tenorio Javier. All rights reserved.
//

import UIKit
import os.log
import UserNotifications
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
}

let defaults = UserDefaults.standard

let date = Date()
let calendar = Calendar.current

let hour = calendar.component(.hour, from: date)
let minutes = calendar.component(.minute, from: date)
let seconds = calendar.component(.second, from: date)

class ThirdViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var input: UITextField!

    var list = [String]()
    
    @IBOutlet weak var myTableView: UITableView!
    
    
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
    cell.textLabel?.text = list[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            self.list.remove(at: indexPath.row)
            let defaults = UserDefaults.standard
            defaults.set(list, forKey: "SavedArray")
            
            defaults.synchronize()
            
            myTableView.reloadData()

        
        }
    }
    
    //@IBAction func addItem(_ sender: Any)
   // {
       // if (input.text != " ")
        //{
           // list.append(input.text!)
       // }
        //input.text = ""
       // myTableView.reloadData()
        
  //  }
    
    @IBAction func addTask(_ sender: Any) {
    alert()
    }
    
    
    func alert()
    {
        let alert = UIAlertController(title: "Task Input", message: "", preferredStyle: .alert)
        alert.addTextField { (textField : UITextField) -> Void in
            textField.placeholder = "Enter your task"
        }
        
        let addd = UIAlertAction(title: "Add", style: .default)
        {
            (action) in
           
            let textfield = alert.textFields![0] as? UITextField
            self.list.append((textfield?.text!)!)
            
            
            self.myTableView.reloadData()
            let defaults = UserDefaults.standard
            defaults.set(self.list, forKey: "SavedArray")
            
            defaults.synchronize()
            
            self.myTableView.reloadData()
            
            print (self.list)

        
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        {
        (alert) in
        }
    
    alert.addAction(addd)
    alert.addAction(cancel)
    
        present(alert, animated: true, completion: nil)
    }
    
   
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        datePicker.isHidden = true

        list  = defaults.stringArray(forKey: "SavedArray") ?? [String]()
        myTableView.reloadData()
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        self.restoreSwitchesStates();

        
    
    }
   
   
    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    @IBOutlet weak var switchout: UISwitch!
    
   
    
    func alert2()
   {
    let alert2 = UIAlertController(title: "Reminder", message: "You will receive a notification in 24 hours: Tomorrow at \(hour):\(minutes)", preferredStyle: .alert)
    let ok = UIAlertAction(title: "Ok", style: .default)
    {
        (alert2) in
    
    }
    
    alert2.addAction(ok)
    present(alert2, animated: true, completion: nil)
    }
    
    
    @IBAction func notifswitch(_ sender: Any) {
print ("hello")
        if switchout.isOn
        {
           alert2()
            
            if #available(iOS 10.0, *), list.isEmpty == false {
                
                let content = UNMutableNotificationContent()
                content.title = "You have tasks to complete!"
                content.subtitle = ""
                content.body = "Open the task manager to see which tasks need completion"
                let alarmTime = Date().addingTimeInterval(60) // two days
                //let components = Calendar.current.dateComponents([.weekday, .hour, .minute], from: alarmTime)
                //let trigger = UNCalendarNotificationTrigger(dateMatching: components, repeats: true)
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 86400, repeats: true)
                let request = UNNotificationRequest(identifier: "taskreminder", content: content, trigger: trigger)
                UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
            
            } else {
             UNUserNotificationCenter.current().removeAllPendingNotificationRequests()

                print ("hello")
            }

        } else
        {
            UIApplication.shared.cancelAllLocalNotifications()
        }
        
        self.saveSwitchesStates()
    }
    
    func animateMyViews(_ viewToHide: UIView, viewToShow: UIView) {
        let animationDuration = 0.35
        
        UIView.animate(withDuration: animationDuration, animations: { () -> Void in
            viewToHide.transform = viewToHide.transform.scaledBy(x: 0.001, y: 0.001)
        }, completion: { (completion) -> Void in
            
            viewToHide.isHidden = true
            viewToShow.isHidden = false
            
            viewToShow.transform = viewToShow.transform.scaledBy(x: 0.001, y: 0.001)
            
            UIView.animate(withDuration: animationDuration, animations: { () -> Void in
                viewToShow.transform = CGAffineTransform.identity
            })
        })
    }
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func saveSwitchesStates() {
        UserDefaults.standard.set(switchout.isOn, forKey: "switchnotif");
 
        
        UserDefaults.standard.synchronize();
    }
    
    func restoreSwitchesStates() {
        switchout.isOn = UserDefaults.standard.bool(forKey: "switchnotif");
       
    }

}
