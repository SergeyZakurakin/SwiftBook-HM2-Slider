//
//  ViewController.swift
//  SwiftBook HM2
//
//  Created by Sergey Zakurakin on 24/01/2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var colorView: UIView!
    

    
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redTextField: UITextField!
    @IBOutlet weak var greenTextField: UITextField!
    @IBOutlet weak var blueTextField: UITextField!
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSlider.value = 0.0
        greenSlider.value = 0.0
        blueSlider.value = 0.0
        
        colorView.layer.cornerRadius = 30
        colorView.backgroundColor = .black
        
    }
    
    
    
    
    @IBAction func SlidersAction(_ sender: UISlider) {
        colorView.backgroundColor = UIColor(_colorLiteralRed: redSlider.value,
                                            green: greenSlider.value,
                                            blue: blueSlider.value, alpha: 1)
        
        
    }
    
    
    
 
    
    

}

