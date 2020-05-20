//
//  SwiftRobotControlCenter.swift
//  MyRobot
//
//  Created by Ivan Vasilevich on 10/4/14.
//  Copyright (c) 2014 Ivan Besarab. All rights reserved.
//

import UIKit
//  All robot commands can be founded in GameViewController.h
class SwiftRobotControlCenter: RobotControlCenter {
    
    //  Level name setup
    override func viewDidLoad() {
        levelName = "L55H" //  Level name
        super.viewDidLoad()
    }
     
    override func run() {
        
        buildPiramide()
        
    } //end Run
    
    // start block functions
    
    func buildPiramide() {
        
          var n = 8
          var candyInAString = 1
          var numberString = 1
        
        turnRight()
        for _ in 0..<n {
            move()
            for _ in 0..<n {
                put()
                move()
            }
            nextLineback()
            n = n - 1
            numberString = numberString + 1
            candyInAString = candyInAString + 1
        }
    }
    
    
    func nextLineback() {
        if facingDown {
            turnLeft()
            move()
            turnLeft()
        }
        else if facingUp{
            turnRight()
            move()
            turnRight()
            move()
        }
    }
    
    func turnLeft() {
        turnRight()
        turnRight()
        turnRight()
    }
    
    // end functions
    
} // End controller
 
