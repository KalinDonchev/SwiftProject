//
//  AddAccountViewController.swift
//  Exam14Nov
//
//  Created by Kalin Donchev (V) on 14.11.21.
//

import UIKit

class AddAccountViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var addAcountTextField: UITextField!
    @IBOutlet weak var addAccountButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addAcountTextField.delegate = self
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    


}


extension AddAccountViewController: UITextViewDelegate {
    func textFieldShouldBeginEditing(addAccountТеxtField: UITextField) -> Bool {
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        addAcountTextField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
    
    
}
