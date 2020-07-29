//
//  FormViewController.swift
//  AssignmentTwo
//
//  Created by Aditya Srivastav on 20/07/20.
//  Copyright © 2020 Aditya Srivastav. All rights reserved.
//

import UIKit

protocol SaveName{
    func onNameReceived(name: String)
}


class FormViewController: UIViewController {

    var delegate: SaveName?
    
    @IBOutlet weak var fieldName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func submitName(_ sender: Any) {
        let nameTxt = fieldName.text
        if nameTxt !=  nil {
            delegate?.onNameReceived(name: nameTxt!)
        }
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
