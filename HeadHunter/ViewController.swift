//
//  ViewController.swift
//  HeadHunter
//
//  Created by IgorTrifuntov on 07/06/2018.
//  Copyright © 2018 IgorTrifuntov. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textNumber: UITextField!
    
    @IBOutlet weak var webView: WKWebView!
    
    @IBAction func search(_ sender: UITextField) { // search by number
        guard let searchNumber = textNumber.text else { return }
        let searchString = baseUrlString + "/vacancy/\(searchNumber)"
        loadUrl(searchString)
        textNumber.text = ""
    }
    
    let baseUrlString = "https://hh.ru"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadUrl(baseUrlString)
    }
    
    func loadUrl(_ urlString: String) {
        guard let url = URL(string: urlString) else { return }
        let request = URLRequest(url: url)
        webView.load(request)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) { // hide the keyboard
        view.endEditing(true)
    }
    
}

