//
//  ViewController.swift
//  Delegation
//
//  Created by Devendra  Singh on 30/09/21.
//

import UIKit

class ViewController: UIViewController, TextChangeDelegate{
    

//    var secondController = ViewController2()
    
    @IBOutlet weak var labelText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
//        secondController.delegate = self
        labelText.text = "Change It!"
        labelText.sizeToFit()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goTo2", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "goTo2" {
            let secondVC = segue.destination as! ViewController2
            secondVC.delegate = self
            
        }
    }
    func didTextChange(changedText: String) {
        labelText.text = changedText
        labelText.sizeToFit()
    }
}

