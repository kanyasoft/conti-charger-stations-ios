//
//  ViewController.swift
//  ContiChargingStation
//
//  Created by ksf on 18.03.2024.
//

import UIKit
import WebKit
class ViewController: UIViewController, WKNavigationDelegate {
    //@IBOutlet weak var webView: WKWebView!
    let webView = WKWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(webView)
        webView.navigationDelegate = self
//guard let url = URL(string: "https://e-pump.ro/conti-charger-stations/login.php") else {
//            return}
        
        guard let url = URL(string: "http://192.168.1.106/conti-charger-stations/login.php") else {
            return}
        webView.load(URLRequest(url: url))
        
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        webView.frame = view.frame
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
                // Calculate the desired zoom scale (50%)
        let zoomScale: CGFloat = 1.7
                
                // Access the underlying UIScrollView of the WKWebView
        if let scrollView = webView.scrollView as? UIScrollView {
            // Set the zoom scale
            //scrollView.setZoomScale(zoomScale, animated: true)
        }
        let javascript = "document.body.style.zoom = '250%';"
        //webView.evaluateJavaScript(javascript, completionHandler: nil)
          
        }
    }
        
    

