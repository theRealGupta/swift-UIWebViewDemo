//
//  ViewController3.swift
//  webViewDemo
//
//  Created by Anup Gupta on 02/07/18.
//  Copyright © 2018 GeekGuns. All rights reserved.
//

import UIKit
import WebKit
class ViewController3: UIViewController, UIWebViewDelegate {
    @IBOutlet var loadSpinner: UIActivityIndicatorView!
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var geekGunsLogo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.delegate = self
        loadAddress()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    func loadAddress() {
        
        let myURL = URL(string:"https://www.google.com")
        let myRequest = URLRequest(url: myURL!)
        webView.loadRequest(myRequest)
        print("Webpage Loaded Successfully")
    }
   
 
    public func webViewDidStartLoad(_ webView: UIWebView) {
        print("webViewDidStartLoad")
        loadSpinner.isHidden = false
        geekGunsLogo.isHidden = false
        loadSpinner.startAnimating()
    }
  
  
    public func webViewDidFinishLoad(_ webView: UIWebView){
        print("webViewDidFinishLoad")
        loadSpinner.stopAnimating()
        loadSpinner.isHidden = true
        geekGunsLogo.isHidden = true
    }
  
  
    public func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        print("didFailLoadWithError")
        loadSpinner.stopAnimating()
        loadSpinner.isHidden = true
        geekGunsLogo.isHidden = true
        
    }
    
    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool{
        print("ABCd")
        return true
    }
    
    

}
