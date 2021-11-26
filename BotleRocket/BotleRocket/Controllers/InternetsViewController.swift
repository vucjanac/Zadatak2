//
//  InternetsViewController.swift
//  BotleRocket
//
//  Created by Aleksandar Stojanovic on 11/23/21.
//

import UIKit
import WebKit

class InternetsViewController: UIViewController, WKNavigationDelegate {
    var webView: WKWebView?
    
    override func loadView() {
        webView = WKWebView()
        webView?.navigationDelegate = self
        view = webView
    }
    
        override func viewDidLoad() {
        super.viewDidLoad()
        browserButtons()
                       
        let url = URL(string: "https://www.bottlerocketstudios.com")!
        webView?.load(URLRequest(url: url))
        webView?.allowsBackForwardNavigationGestures = true
    
    }
    
    func browserButtons() {
        let backButton = UIBarButtonItem.init(image: UIImage(named: "ic_webBack"), style: .plain, target: self, action: #selector(goBack))
        let reloadButton = UIBarButtonItem.init(image: UIImage(named: "ic_webRefresh"), style: .plain, target: self, action: #selector(doReload))
        let forwardButton = UIBarButtonItem.init(image: UIImage(named: "ic_webForward"), style: .plain, target: self, action: #selector(goForward))
    }
    
    @objc func goBack(sender: UIBarButtonItem) {
        webView?.goBack()
    }
    
    @objc func doReload(sender: UIBarButtonItem) {
        webView?.reload()
    }
    
    @objc func goForward(sender: UIBarButtonItem) {
        webView?.goForward()
    }
    
    
    
}











/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destination.
 // Pass the selected object to the new view controller.
 }
 */


