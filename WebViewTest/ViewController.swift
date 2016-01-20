//
//  ViewController.swift
//  WebViewTest
//
//  Created by Seung-Hwan Lee on 2016. 1. 20..
//  Copyright © 2016년 LinePlus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let webView = UIWebView(frame: CGRectZero)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.prepareWebView()
        
        self.testTransparentWebView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func prepareWebView() {
        webView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(webView)
        
        let viewDic = ["webView":webView]
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-10-[webView]-10-|", options: .AlignAllCenterY, metrics: nil, views: viewDic))
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-44-[webView]-44-|", options: .AlignAllCenterX, metrics: nil, views: viewDic))
    }

    func testTransparentWebView() {
        self.view.backgroundColor = UIColor.yellowColor()
        
        webView.translatesAutoresizingMaskIntoConstraints = false
        webView.opaque = false
        webView.backgroundColor = UIColor.clearColor()
        
        let htmlString = "<body style=\"background-color: transparent;\">hi</body>"
        webView.loadHTMLString(htmlString, baseURL: nil)
    }
}

