//
//  ViewController.swift
//  DDSlideJigsaw
//
//  Created by madongdong on 2017/10/10.
//  Copyright © 2017年 madongdong. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // nothing
        
        let showLabel:UILabel = UILabel()
        showLabel.text = "滑动拼图";
        
        self.view.addSubview(showLabel)
        
        showLabel.snp.makeConstraints { (make) in
            make.width.equalTo(200)
            make.center.equalTo(self.view)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

