//
//  ViewController.swift
//  HeadHunter
//
//  Created by IgorTrifuntov on 07/06/2018.
//  Copyright © 2018 IgorTrifuntov. All rights reserved.
//

import UIKit
import WebKit
var hh = "https://hh.ru"

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: hh)
        let request = URLRequest(url: url!)
        webView.load(request)
    }
    
    @IBOutlet weak var textNumber: UITextField!
    
    @IBOutlet weak var webView: WKWebView!
    
    @IBAction func search(_ sender: UITextField) { // search by number
        let searchNumber = textNumber.text!
        print("\(searchNumber)")
        hh = "https://hh.ru/vacancy/\(searchNumber)"
        viewDidLoad()
        return textNumber.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) { // hide the keyboard
        view.endEditing(true)
    }
    
    
}

