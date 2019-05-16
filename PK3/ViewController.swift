//
//  ViewController.swift
//  PK3
//
//  Created by O'Hara, Patrick on 27.03.19.
//  Copyright © 2019 O'Hara, Patrick. All rights reserved.
//

import UIKit
import WebKit
class ViewController: UIViewController, WKNavigationDelegate {
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 1
        let url = URL(string: "https://sites.google.com/view/qatoolsandservices")!
        //let url = URL(string: "http://192.168.114.123")!
        webView.load(URLRequest(url: url))
        
        // 2
        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
        toolbarItems = [refresh]
        navigationController?.isToolbarHidden = false
    }
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }
    
}
