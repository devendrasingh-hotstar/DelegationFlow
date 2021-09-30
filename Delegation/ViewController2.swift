//
//  ViewController2.swift
//  Delegation
//
//  Created by Devendra  Singh on 30/09/21.
//

import UIKit

protocol TextChangeDelegate {
    func didTextChange(changedText: String)
}

class ViewController2: UIViewController {
    var delegate: TextChangeDelegate?

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func goBackPressed(_ sender: UIButton) {
        print(textField.text!)
        delegate?.didTextChange(changedText: textField.text!)
        dismiss(animated: true, completion: nil)
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
