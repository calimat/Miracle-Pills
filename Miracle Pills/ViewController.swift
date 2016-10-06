//
//  ViewController.swift
//  Miracle Pills
//
//  Created by Ricardo Herrera Petit on 9/27/16.
//  Copyright © 2016 Ricardo Herrera Petit. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var pillImage: UIImageView!
    
    @IBOutlet weak var miraclePillSubTitle: UILabel!
    @IBOutlet weak var miraclePillTitle: UILabel!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var countryFLD: UITextField!
    @IBOutlet weak var zipCodeLbl: UILabel!
    @IBOutlet var buyNowBtn: UIView!
    
    @IBOutlet weak var successImage: UIImageView!
    
    @IBOutlet weak var dividerView: UIView!
    @IBOutlet var mainView: UIView!
    @IBOutlet weak var stateLbl: UILabel!
    @IBOutlet weak var cityFLD: UITextField!
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var addressFLD: UITextField!
    @IBOutlet weak var addressLbl: UILabel!
    @IBOutlet weak var fullNameFLD: UITextField!
    @IBOutlet weak var fullNameLbl: UILabel!
    @IBOutlet weak var zipCodeFLD: UITextField!
    let states = ["Alaska","Arkansas","Alabama","California","Maine","NewYork"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        hideFieldsWhenPickerisVisible(false)
        
    }
    @IBAction func buyNowBtnPressed(_ sender: AnyObject) {
        hideEverything(true)
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        hideFieldsWhenPickerisVisible(true)
    }
    
    func hideEverything(_ hide:Bool)
    {
        pillImage.isHidden = hide
        miraclePillTitle.isHidden = hide
        miraclePillSubTitle.isHidden = hide
        dividerView.isHidden = hide
        fullNameLbl.isHidden = hide
        fullNameFLD.isHidden = hide
        addressLbl.isHidden = hide
        addressFLD.isHidden = hide
        cityLbl.isHidden = hide
        cityFLD.isHidden = hide
        stateLbl.isHidden = hide
        statePickerBtn.isHidden = hide
        statePicker.isHidden = hide
        countryLbl.isHidden = hide
        countryFLD.isHidden = hide
        zipCodeLbl.isHidden = hide
        zipCodeFLD.isHidden = hide
        buyNowBtn.isHidden = hide
        successImage.isHidden = !hide
        
        

    }
    
    func hideFieldsWhenPickerisVisible(_ isHidden:Bool)
    {
        statePicker.isHidden = isHidden
        countryLbl.isHidden = !isHidden
        countryFLD.isHidden = !isHidden
        zipCodeLbl.isHidden = !isHidden
        zipCodeFLD.isHidden = !isHidden

        
    }
}

