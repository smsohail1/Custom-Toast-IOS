//
//  ViewController.swift
//  UISearchController
//
//  Created by Abdul Ahad on 7/31/17.
//  Copyright © 2017 plash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UITextView!
    struct  data {
        var name = String()
        var desc = String()
    }
    
    var list = [data(name:"sohail",desc:"1st")];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //list = [data(name:"sohail",desc:"1st")]
        list.append(data(name:"second",desc:"2nd"))
        
        for i in list{
            print("\(i)")
        }
//label.text = String(list.count)
 //       showToast(message: "first")
    }

    
    func showToast(message : String) {
        
        let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2 - 75, y: self.view.frame.size.height-100, width: 150, height: 35))
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.9)
        toastLabel.textColor = UIColor.white
        toastLabel.textAlignment = .center;
        toastLabel.font = UIFont(name: "Montserrat-Light", size: 12.0)
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        
        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: 8.0, delay: 0.1, options: .curveEaseOut, animations: {
            toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    }
}

