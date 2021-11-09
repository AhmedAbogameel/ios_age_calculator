//
//  ViewController.swift
//  Age Calculator
//
//  Created by Jemi on 07/11/2021.
//

import UIKit

class ViewController: UIViewController {
    
    private var days :Int?
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func calculateActionButton(_ sender: Any) {
        if(days != nil){
            var years = getYears(var: days!)
            var months = getMonths(var: days!)
            resultLabel.text = "\(days!) Days || \(months) Months || \(years) Years"
        }
    }
    
    @IBAction func datePickerAction(_ sender: Any) {
        let pickedDate : UIDatePicker = sender as! UIDatePicker
        let days = getDaysFrom(var: pickedDate.date)
        self.days = days;
    }
    
    private func getYears(var value:Int) -> Int {
        var years = Int(value / 365)
        return years
    }
    
    private func getMonths(var value:Int) -> Int {
        var years = getYears(var: days!)
        var months = years * 12
        return months
    }
    
    private func getDaysFrom(var value: Date) -> Int {
        let calendar = Calendar.current
        let date = Date();
        let date1 = calendar.startOfDay(for: date)
        let date2 = calendar.startOfDay(for: value)
        let c = calendar.dateComponents([.day], from: date2, to: date1)
        return c.day!
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

