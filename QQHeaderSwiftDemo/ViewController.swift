//
//  ViewController.swift
//  QQHeaderSwiftDemo
//
//  Created by lijunjie on 14/03/2017.
//  Copyright © 2017 GagSquad. All rights reserved.
//

import UIKit
import QQHeader

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let viewWH: CGFloat = 140
        let backgroundColor = UIColor(red: 230/255.0, green: 230/255.0, blue: 230/255.0, alpha: 1.0)
        let view1 = JJHeaders.createHeaderView(viewWH, images: [UIImage(named: "0")!])
        let center = self.view.center
        view1?.center = CGPoint(x: center.x, y: 90)
        view1?.backgroundColor = backgroundColor
        
        let view2 = JJHeaders.createHeaderView(viewWH, images: [UIImage(named: "0")!,UIImage(named: "1")!])
        view2?.center = CGPoint(x: 85, y: 240)
        view2?.backgroundColor = backgroundColor
        
        let view3 = JJHeaders.createHeaderView(viewWH, images: [UIImage(named: "0")!,UIImage(named: "1")!,UIImage(named: "2")!])
        view3?.center = CGPoint(x: 235, y: 240)
        view3?.backgroundColor = backgroundColor
        
        let view4 = JJHeaders.createHeaderView(viewWH, images: [UIImage(named: "0")!,UIImage(named: "1")!,UIImage(named: "2")!,UIImage(named: "3")!])
        view4?.center = CGPoint(x: 85, y: 390)
        view4?.backgroundColor = backgroundColor
        
        let view5 = JJHeaders.createHeaderView(viewWH, images: [
                                                                UIImage(named: "0")!,
                                                                UIImage(named: "1")!,
                                                                UIImage(named: "2")!,
                                                                UIImage(named: "3")!,
                                                                UIImage(named: "4")!
                                                                ])
        view5?.center = CGPoint(x: 235, y: 390)
        view5?.backgroundColor = backgroundColor
        
        self.view.addSubview(view1!)
        self.view.addSubview(view2!)
        self.view.addSubview(view3!)
        self.view.addSubview(view4!)
        self.view.addSubview(view5!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

