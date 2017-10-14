//
//  SJMainGameScene.swift
//  DDSlideJigsaw
//
//  Created by madongdong on 2017/10/14.
//  Copyright © 2017年 madongdong. All rights reserved.
//

import UIKit
import SpriteKit

class SJMainGameScene: SKScene {

    override func didMove(to view: SKView) {
        setUpScenery()
    }
    
    fileprivate func setUpScenery() {
        let backGroundNode = SKSpriteNode(imageNamed:"background")
        backGroundNode.position = self.position
        backGroundNode.size = self.size
        addChild(backGroundNode)
    }
    
    
    
}
