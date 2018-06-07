//
//  ViewController.swift
//  HeadHunter
//
//  Created by IgorTrifuntov on 07/06/2018.
//  Copyright © 2018 IgorTrifuntov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textNumber: UITextField!
    
    @IBOutlet weak var webView: UIWebView!
    
    let url = "https://hh.ru"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadAddressURL()
    }
    func loadAddressURL() {
        let requestURL = NSURL (string: url)
        let request = NSURLRequest(URL: requestURL)
        
        WebView.loadRequest(request)
    }


}

