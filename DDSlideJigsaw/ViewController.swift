//
//  ViewController.swift
//  DDSlideJigsaw
//
//  Created by madongdong on 2017/10/10.
//  Copyright © 2017年 madongdong. All rights reserved.
//

import UIKit
import SnapKit
import SpriteKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let mainView = SKView()
        self.view.addSubview(mainView)
        mainView.snp.makeConstraints { (make) in
            make.size.equalTo(self.view)
            make.center.equalTo(self.view)
        }
        
        mainView.showsFPS = true
        mainView.showsNodeCount = true
        mainView.showsFields = true
        mainView.ignoresSiblingOrder = true
        
        let mainScene = SJMainGameScene()
        
        mainView.presentScene(mainScene)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

