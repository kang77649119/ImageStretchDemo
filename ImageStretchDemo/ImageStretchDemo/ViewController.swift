//
//  ViewController.swift
//  ImageStretchDemo
//
//  Created by 也许、 on 16/11/14.
//  Copyright © 2016年 K. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 初始化UI
        setupUI()
        
    }

}

extension ViewController {

    func setupUI() {
    
        // 创建按钮1,采用xcode提供的图片拉伸功能,不需要用代码对图片进行拉伸处理
        let btn1 = UIButton(frame: CGRect(x: 10, y: 20, width: 100, height: 50))
        btn1.setTitle("我是按钮1", for: .normal)
        btn1.setTitleColor(UIColor.black, for: .normal)
        btn1.setBackgroundImage(UIImage(named: "btn-bg1")!, for: .normal)
        self.view.addSubview(btn1)
        
        // 创建按钮2,对图片进行拉伸处理
        let btn2 = UIButton(frame: CGRect(x: 10, y: 80, width: 150, height: 50))
        btn2.setTitle("我是按钮2", for: .normal)
        btn2.setTitleColor(UIColor.black, for: .normal)
        
        // 图片拉伸 方式1
        var image = UIImage(named: "btn-bg2")
        let capWidth = image!.size.width * 0.5
        let capHeight = image!.size.height * 0.5
        image = image!.stretchableImage(withLeftCapWidth: Int(capWidth), topCapHeight: Int(capHeight))
        btn2.setBackgroundImage(image!, for: .normal)
        self.view.addSubview(btn2)
        
        // 创建按钮3,对图片进行拉伸处理
        let btn3 = UIButton(frame: CGRect(x: 10, y: 150, width: 200, height: 50))
        btn3.setTitle("我是按钮3", for: .normal)
        btn3.setTitleColor(UIColor.black, for: .normal)
        
        // 图片拉伸 方式2
        var btn3Image = UIImage(named: "btn-bg2")
        let btn3ImageCapWidth = btn3Image!.size.width * 0.5
        let btn3ImageCapHeight = btn3Image!.size.height * 0.5
        let btn3Edge = UIEdgeInsetsMake(btn3ImageCapWidth, 15, btn3ImageCapHeight, 15)
        btn3Image = btn3Image!.resizableImage(withCapInsets: btn3Edge)
        btn3.setBackgroundImage(btn3Image!, for: .normal)
        self.view.addSubview(btn3)
        
        // 创建按钮4,对图片进行拉伸处理
        let btn4 = UIButton(frame: CGRect(x: 10, y: 220, width: 250, height: 50))
        btn4.setTitle("我是按钮4", for: .normal)
        btn4.setTitleColor(UIColor.black, for: .normal)
        
        // 图片拉伸 方式3
        var btn4Image = UIImage(named: "btn-bg2")
        let btn4ImageCapWidth = btn4Image!.size.width * 0.5
        let btn4ImageCapHeight = btn4Image!.size.height * 0.5
        let btn4Edge = UIEdgeInsetsMake(btn4ImageCapWidth, 15, btn4ImageCapHeight, 15)
        btn4Image = btn4Image!.resizableImage(withCapInsets: btn4Edge, resizingMode: .stretch)
        btn4.setBackgroundImage(btn4Image!, for: .normal)
        self.view.addSubview(btn4)
    
    
    }

}

