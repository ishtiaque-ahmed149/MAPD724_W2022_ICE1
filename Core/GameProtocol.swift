//
//  GameProtocol.swift
//  MAPD724-W2022-ICE1
//
//  Created by Ishtiaque Ahmed on 1/23/22.
//

protocol GameProtocol
{
    // prevent an object from leaving the screen or detect if it has done that
    func CheckBounds()
    
    // Reset GameObject off screen
    func Reset()
    
    // Initialize properties of our Game Objects
    func Start()
    
    // Update will be called every Frame (60 FPS) = 16.666ms
    func Update()
}

