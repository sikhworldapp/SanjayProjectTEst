//
//  SecondVC.swift
//  SanjayProjectTEst
//
//  Created by Amanpreet Singh on 27/05/24.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var imgBack1: UIImageView!
    @IBOutlet weak var imgBack: UIImageView!
    @IBOutlet weak var btnBack: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgBack1.image = UIImage(systemName: "arrow.backward")
        
        
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        let tap2 = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        
        imgBack1.addGestureRecognizer(tap)
        imgBack.addGestureRecognizer(tap2)
        
        // Do any additional setup after loading the view.
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
        print("called")
       dismiss(animated: true)
      // navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func actionFinish(_ sender: Any) {
        print("button tapped")
        dismiss(animated: true)
    }
}
