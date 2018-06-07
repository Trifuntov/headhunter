//
//  ViewController.swift
//  HeadHunter
//
//  Created by IgorTrifuntov on 07/06/2018.
//  Copyright © 2018 IgorTrifuntov. All rights reserved.
//

import UIKit
import WebKit

let baseUrlString = "https://hh.ru"

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: baseUrlString)
        let request = URLRequest(url: url!)
        webView.load(request)
    }
    
    @IBOutlet weak var textNumber: UITextField!
    
    @IBOutlet weak var webView: WKWebView!
    
    func loadUrl(_ urlString: String) {
        guard let url = URL(string: urlString) else { // check URL
            return
        }
        let request = URLRequest(url: url)
        webView.load(request)
    }
    
    @IBAction func search(_ sender: UITextField) { // search by number
        guard let searchNumber = textNumber.text else {
            return
        }
        let searchString = baseUrlString + "/vacancy/\(searchNumber)"
        loadUrl(searchString)
        textNumber.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) { // hide the keyboard
        view.endEditing(true)
    }
    
    
}

