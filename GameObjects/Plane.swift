//
//  Plane.swift
//  MAPD724-W2022-ICE1
//
//  Created by Ishtiaque Ahmed on 1/23/22.
//

import GameplayKit
import SpriteKit

class Plane : GameObject
{
    //Initializer
    init()
    {
        super.init(imageString: "plane", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //LifeCycle functions
    
    override func CheckBounds()
    {
        //Left boundary constraint
        if(position.x <= -310)
        {
            position.x = -310
        }
        
        //Right boundary constraint
        if(position.x >= 310)
        {
            position.x = 310
        }
    }
    
    //Initialization
    override func Start()
    {
        zPosition = 2
    }
    
    override func Update()
    {
        CheckBounds()
    }
    
    func TouchMove(newPos: CGPoint)
    {
        position = newPos
    }
}
