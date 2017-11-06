//
//  SJMainGameScene.swift
//  DDSlideJigsaw
//
//  Created by madongdong on 2017/10/14.
//  Copyright © 2017年 madongdong. All rights reserved.
//

import UIKit
import SpriteKit

fileprivate let z_position_backGroud :CGFloat = 0.0
fileprivate let z_position_holderbg :CGFloat = 1.0
fileprivate let z_position_piece :CGFloat = 2.0



class SJMainGameScene: SKScene {
    
    
    var mainImage : UIImage?
    var piecesArray : Array<SJPieceNode> = []
    var pieceHoldersArray : Array<SJPieceHolder> = []
    var holdBGNode : SKSpriteNode?

    override func didMove(to view: SKView) {
        setUpScenery()
        
        self.setupHolderBGNode()
        
//        setupPieces()
        self.setupRowAndCol(row: 4, col: 4)
        
    }
    
    func setupMainScene(row: UInt, col: UInt, image: UIImage) {
        self.mainImage = image
        
        self.setupRowAndCol(row: row, col: col)
        
    }
    
    func setupHolderBGNode() {
        self.holdBGNode = SKSpriteNode.init(imageNamed: "bgImage")
        self.holdBGNode?.anchorPoint = CGPoint.init(x: 0.5, y: 0.5)
        self.holdBGNode?.position = CGPoint.init(x: 0.5, y: 0.5)
        self.holdBGNode?.zPosition = z_position_holderbg
        self.holdBGNode?.size = CGSize.init(width: 0.8, height: 0.6)
        self.addChild(self.holdBGNode!)
    }
    
    func setupRowAndCol(row: UInt, col: UInt) {
        pieceHoldersArray.removeAll()
        
        let totalCount = row * col + 1;
        
        for row_index in 1...row {
            for col_index in 1...col {
                // holders
                let pieceHolder = SJPieceHolder()
                pieceHolder.row = row_index
                pieceHolder.col = col_index
                self.pieceHoldersArray.append(pieceHolder)
                
                // 碎片
                let pieceNode = SJPieceNode(imageNamed:"cat")
                pieceNode.size = CGSize(width: 0.1, height:0.1)
                self.holdBGNode?.addChild(pieceNode)
                piecesArray.append(pieceNode)
                pieceNode.anchorPoint = CGPoint(x:0.5, y: 0.5)
                pieceNode.position = CGPoint(x: 0.1 * Double(col_index), y: 0.1 * Double(row_index))
                pieceNode.zPosition = z_position_piece
            }
        }
        
        
//        for index in 1...totalCount {
//            // holders
//            let pieceHolder = SJPieceHolder()
//            pieceHolder.row = row
//            pieceHolder.col = col
//            self.pieceHoldersArray.append(pieceHolder)
//
//            // 碎片
//            let pieceNode = SJPieceNode(imageNamed:"cat")
//            pieceNode.size = CGSize(width: 0.1, height:0.1)
//            self.holdBGNode?.addChild(pieceNode)
//            piecesArray.append(pieceNode)
//            pieceNode.anchorPoint = CGPoint(x:0.5, y: 0.5)
//            pieceNode.position = CGPoint(x: 0.1 * Double(colIndex), y: 0.1 * Double(rowIndex))
//            pieceNode.zPosition = z_position_piece
//        }
        
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
        for rowIndex in 0...3 {
            for colIndex in 0...3 {
                let pieceNode = SJPieceNode(imageNamed:"cat")
                pieceNode.size = CGSize(width: 0.1, height:0.1)
                self.holdBGNode?.addChild(pieceNode)
                piecesArray.append(pieceNode)
                pieceNode.anchorPoint = CGPoint(x:0.5, y: 0.5)
                pieceNode.position = CGPoint(x: 0.1 * Double(colIndex), y: 0.1 * Double(rowIndex))
                pieceNode.zPosition = z_position_piece
            }
        }
        
    }
    
    
    
}
