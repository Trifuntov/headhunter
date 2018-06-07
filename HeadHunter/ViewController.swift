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
    
    func loadUrl() {
        let url = URL(string: hh)
        let request = URLRequest(url: url!)
        webView.load(request)
    }
    
    func validateUrl (urlString: String?) -> Bool { //check URL
        let url: NSURL? = NSURL(string: urlString!)
        if url != nil {
            return true
        }
        return false
    }
    
    @IBAction func search(_ sender: UITextField) { // search by number
        let searchNumber = textNumber.text!
        hh = "https://hh.ru/vacancy/\(searchNumber)"
        if validateUrl(urlString: hh) {
            loadUrl()
            textNumber.text = ""
        } else {
            textNumber.text = ""
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) { // hide the keyboard
        view.endEditing(true)
    }
    
    
}

