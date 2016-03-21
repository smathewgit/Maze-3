//
//  ControlCenter.swift
//  Maze
//
//  Created by Jarrod Parkes on 8/14/15.
//  Copyright © 2015 Udacity, Inc. All rights reserved.
//

// orgiginal


import UIKit

class ControlCenter {

    var mazeController: MazeController!
    
    func previousMoveIsFinished(robot: ComplexRobotObject) {
        self.moveComplexRobot(robot)
        
    }

    func moveComplexRobot(robot: ComplexRobotObject) {
      
    // You may want to paste your Part 2 implementation of moveComplexRobot() here
        
        
        let robotIsBlocked = isFacingWall(robot, direction: robot.direction)
        
        
        if robotIsBlocked {
            randomlyRotateRightOrLeft(robot)
            
        } else if !robotIsBlocked {
            
            func continueStraightOrRotate(robot: ComplexRobotObject, wallInfo:(up: Bool, right: Bool, down: Bool, left: Bool, numberOfWalls: Int)){
            print("Continue straight or rotate")
            
        }


            let myWallInfo = checkWalls(robot)
            
            print(myWallInfo)
            
            
            // Step 2.2a
            // Categorize the robot's current location based on the number of walls
            
            // Uncomment the line of code below
            
            let isThreeWayJunction = (myWallInfo.numberOfWalls == 1)
            
            // TODO: Define the constant, isTwoWayPath
            
            let isTwoWayPath = (myWallInfo.numberOfWalls == 2)
            
            // TODO: Define the constant, isDeadEnd
            let isDeadEnd = (myWallInfo.numberOfWalls == 3)
    
        // Step 3.2
        // Two-way Path - else-if statements
        
        // TODO: If the robot encounters a two way path and there is NO wall ahead it should continue forward.
            
        
        // TODO: If the robot encounters a two way path and there IS a wall ahead, it should turn in the direction of the clear path.
            
            if isTwoWayPath && robotIsBlocked {
                func turnTowardClearPath(robot: ComplexRobotObject, wallInfo: (up: Bool, right: Bool, down: Bool, left: Bool, numberOfWalls: Int)){
                    print("choose clear path")
                    
                }
            } else if isTwoWayPath && !robotIsBlocked {
                robot.move()
            }
        
    
        }

}
}

