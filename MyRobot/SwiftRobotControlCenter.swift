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
    
    var n = 8
    var candy = 0
    var candyInAString = 1
    var numberString = 1
    
    override func run() {
        
        turnRight()
        candy = n
        for _ in 0..<n {
            piramidBild()
            nextLineback()
            n = n - 1
            if numberString == 7 {
                countCandyInString(string: numberString)
            }
            numberString = numberString + 1
            candyInAString = candyInAString + 1
        }

    } //end Run
    
    // start block functions
    
    func countCandyInString (string: Int)
    {
        
        print ("in string \(numberString) have a \(candyInAString) candys")
    }
    
    func piramidBild () {
        move()
        for _ in 0..<n {
            put()
            move()
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
 
// test commit git hub

