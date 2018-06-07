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
    
    
    //let url = "https://hh.ru"
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://hh.ru")
        let request = URLRequest(url: url!)
        
        webView.load(request)
        
       
    }
    

}

