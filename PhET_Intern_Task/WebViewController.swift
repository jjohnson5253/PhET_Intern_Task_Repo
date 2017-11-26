//
//  WebViewController.swift
//  PhET_Intern_Task
//
//  Created by Jake Johnson on 11/24/17.
//  Copyright © 2017 Jake Johnson. All rights reserved.
//

import UIKit
import WebKit

//This view controller will have the web view of the simulation
class WebViewController: UIViewController, WKUIDelegate { //WKUIDelegate needed for WKWebView
    
    var webView: WKWebView! //create WKWebView object

    override func loadView() {
        //Programmatically add a WKView component
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
        
        //disable the swiping navigation function since it interfers with simulation
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //load a URL request to webview of the simulation's URL
        let myURL = URL(string: "https://phet.colorado.edu/sims/html/circuit-construction-kit-dc/latest/circuit-construction-kit-dc_en.html")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

