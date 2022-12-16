//
//  ViewController.swift
//  dataPassingForwardBackward2
//
//  Created by STC on 04/11/22.
//

import UIKit

class ViewController: UIViewController ,backwardDataPassing{
  

    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var textField1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textField1.text = ""
    }

    @IBAction func button1(_ sender: Any) {
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! secondViewController
        let dataToPass = self.textField1.text
        secondViewController.dataFromFirstController = dataToPass
        secondViewController.delegateSvc = self
        navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    func passDataToFirstViewController(textToPass: String?) {
        self.label1.text = textToPass
    }
    
}

