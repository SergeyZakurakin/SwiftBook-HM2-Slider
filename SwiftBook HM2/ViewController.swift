//
//  ViewController.swift
//  SwiftBook HM2
//
//  Created by Sergey Zakurakin on 24/01/2024.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    
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
       

        switch sender.tag {
        case 0:
            redTextField.text = String(format: "%.1f", redSlider.value)
            redLabel.text = String(format: "%.1f", redSlider.value)
        case 1:
            greenTextField.text = String(format: "%.1f", greenSlider.value)
            greenLabel.text = String(format: "%.1f", greenSlider.value)
        case 2:
            blueTextField.text = String(format: "%.1f", blueSlider.value)
            blueLabel.text = String(format: "%.1f", blueSlider.value)
        default: break
        }
        
        
        colorSliderConfigure()
        
    }
    
    
    
    
    func colorSliderConfigure () {
        colorView.backgroundColor = UIColor(_colorLiteralRed: redSlider.value,
                                            green: greenSlider.value,
                                            blue: blueSlider.value, alpha: 1)
    }
    
 

}


//extension ViewController: UITextFieldDelegate {
//    
////    
////    
////    func textFieldShouldReturn(UITextField) -> Bool {
////    return true
////    }
//    
//}
///
