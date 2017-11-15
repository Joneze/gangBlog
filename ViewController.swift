//
//  ViewController.swift
//  gangBlog
//
//  Created by jay on 2017/11/14.
//  Copyright © 2017年 曾辉. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    var zhWebView = WKWebView();
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        self.creatWebView()
        
    }

    func creatWebView() {
        //创建wkwebview
        let webview = WKWebView(frame: CGRect(x:0, y:0,width:self.view.frame.width, height:self.view.frame.height))
        //创建网址
        let url = URL(string: "http://keeganlee.me")
        //创建请求
        let request = URLRequest(url: url!)
        //加载请求
        webview.load(request)
        //添加wkwebview
        self.view.addSubview(webview)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

