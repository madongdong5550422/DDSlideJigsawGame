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
    
    var piecesArray : Array<SJPieceNode> = []

    override func didMove(to view: SKView) {
        setUpScenery()
        
        setupPieces()
        
    }
    
    // 设置背景
    fileprivate func setUpScenery() {
        let backGroundNode = SKSpriteNode(imageNamed:"background")
        backGroundNode.anchorPoint = CGPoint(x: 0,y: 0)
        backGroundNode.position = self.position
        backGroundNode.size = self.size
        addChild(backGroundNode)
    }
    
    // 设置移动的滑块
    fileprivate func setupPieces() {
        for rowIndex in 1...3 {
            for colIndex in 1...3 {
                let pieceNode = SJPieceNode(imageNamed:"cat")
                pieceNode.size = CGSize(width: 0.1, height:0.1)
                addChild(pieceNode)
                piecesArray.append(pieceNode)
                pieceNode.anchorPoint = CGPoint(x:0, y: 0)
                pieceNode.position = CGPoint(x: 0.1 * Double(colIndex), y: 0.1 * Double(rowIndex))
                pieceNode.zPosition = 1
            }
        }
        
    }
    
    
    
}
