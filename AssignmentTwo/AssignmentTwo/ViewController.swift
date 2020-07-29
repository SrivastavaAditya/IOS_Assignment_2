//
//  ViewController.swift
//  AssignmentTwo
//
//  Created by Aditya Srivastav on 20/07/20.
//  Copyright © 2020 Aditya Srivastav. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SaveName {

    @IBOutlet weak var labelName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if UserDefaults.standard.string(forKey: "UserName") != nil {
            labelName.isHidden = false
            labelName.text = UserDefaults.standard.string(forKey: "UserName")
        }else{
            labelName.isHidden = true
        }
    }


    @IBAction func gotoForm(_ sender: Any) {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let formVC = storyBoard.instantiateViewController(identifier: "form_view_controller")
        (formVC as? FormViewController)?.delegate = self
        self.navigationController?.pushViewController(formVC, animated: true)
    }
    
    
    func onNameReceived(name: String) {
        UserDefaults.standard.set(name, forKey: "UserName")
        UserDefaults.standard.synchronize()
        labelName.isHidden = false
        labelName.text = name
    }
}
