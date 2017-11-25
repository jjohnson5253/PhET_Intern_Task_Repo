//
//  WebViewController.swift
//  PhET_Intern_Task
//
//  Created by Jake Johnson on 11/24/17.
//  Copyright © 2017 Jake Johnson. All rights reserved.
//

import UIKit
import WebKit //needed for webView component

//This view controller will have the web view of the simulation
class WebViewController: UIViewController, WKUIDelegate { //WKUIDelegate needed for WKWebView
    
    var webView: WKWebView! //create WKWebView object
    
    //Programmatically add a WKView component
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration() //create WKWebViewConfig object
        webView = WKWebView(frame: .zero, configuration: webConfiguration) //set webView
        webView.uiDelegate = self
        view = webView //set view of this controller to webView
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        //disable the swiping navigation function since it interfers with simulation
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        //Set url to the simulation
        let myURL = URL(string: "https://phet.colorado.edu/sims/html/circuit-construction-kit-dc/latest/circuit-construction-kit-dc_en.html")
        let myRequest = URLRequest(url: myURL!) //create a URLRequest to the simulation
        webView.load(myRequest) //load the request to the view
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
