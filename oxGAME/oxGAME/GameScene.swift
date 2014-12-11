//
//  GameScene.swift
//  oxGAME
//
//  Created by pd−正城 on 2014/12/05.
//  Copyright (c) 2014年 pd−正城. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var turn_o=true
    
    /*override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Hello, World!";
        myLabel.fontSize = 65;
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        
        self.addChild(myLabel)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
            
            let sprite = SKSpriteNode(imageNamed:"Spaceship")
            
            sprite.xScale = 0.5
            sprite.yScale = 0.5
            sprite.position = location
            
            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            
            sprite.runAction(SKAction.repeatActionForever(action))
            
            self.addChild(sprite)
        }
    }*/
   
    required init(coder aDeoder: NSCoder){
        fatalError("NSCoder not supported")
    }
    
    override init(size:CGSize){
        super.init(size:size)
        
        anchorPoint = CGPoint(x:0,y:0)
        
        let background = SKSpriteNode(imageNamed:"bg")
        background.position = CGPoint(x:0,y:0)
        background.anchorPoint = CGPoint(x:0,y:0)
        addChild(background)
        backgroundColor=SKColor(red: 1.0,green: 0.5,blue: 0.5,alpha:1.0)
    }
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
    func transform(w:CGFloat)->CGFloat{
        switch w{
        case let w where 0<w && w<80:
            return 0
        case let w where 80<w && w<160:
            return 80
        case let w where 160<w && w<240:
            return 160
        default:
            return -80
        }
    }
    
    func mark(location: CGPoint){
        let imageName=turn_o ? "o":"x"
        let sign=SKSpriteNode(imageNamed: imageName)
        sign.position=CGPoint(x:transform(location.x),y:160-transform(location.y-320))
        sign.anchorPoint=CGPoint(x:0,y:0)
        addChild(sign)
        
        turn_o = !turn_o
    }
    
}
