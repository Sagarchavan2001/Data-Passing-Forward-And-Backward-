//
//  secondViewController.swift
//  dataPassingForwardBackward2
//
//  Created by STC on 04/11/22.
//

import UIKit
protocol backwardDataPassing {
    func passDataToFirstViewController(textToPass : String?)
}
class secondViewController: UIViewController {
    
    @IBOutlet weak var label2: UILabel!
    

    @IBOutlet weak var textField2: UITextField!
    var dataFromFirstController : String?
    var delegateSvc : backwardDataPassing?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.label2.text = dataFromFirstController
        navigationItem.hidesBackButton = true
        
    }
    

    @IBAction func button2(_ sender: UIButton) {
        guard let delegatedataFromSecondViewController = delegateSvc else {
            print("delegate data not found")
            return
        }
        let retriveData = self.textField2.text
        delegatedataFromSecondViewController.passDataToFirstViewController(textToPass: retriveData)
        navigationController?.popViewController(animated: true)
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
