//
//  Shape.swift
//  GenerativeArt
//
//  Created by Morgan Harris-Stoertz on 2023-10-24.
//

import SwiftUI

//Triangle Bottom left
struct TriangleBottomLeft: Shape{
    func path(in rect: CGRect) -> Path {
        
        var path = Path()
        path.move (to: CGPoint(x: rect.minX, y: rect.minY))
        
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY)) //1
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY)) //2
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY)) //3
        
        return path
    }
}

// Triangle Top Right
struct TriangleTopRight: Shape {
    func path(in rect: CGRect) -> Path {
        //make an empty path
    
    var path = Path()
        
        //define the path
        path.move (to: CGPoint(x: rect.maxX, y: rect.minY))
        
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY)) //1
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY)) //2
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY)) //3
        
        
        //return to the path
        return path
    
    }
}

//Triangle Top Left
struct TriangleTopLeft: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
            
            //define the path
            path.move (to: CGPoint(x: rect.minX, y: rect.maxY))
            
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY)) //1
            path.addLine(to: CGPoint(x: rect.minX, y: rect.minY)) //2
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY)) //3
            
            
            //return to the path
            return path
    }
    
}


//Triangle Bottom Right
struct TriangleBottomRight: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
            
            //define the path
            path.move (to: CGPoint(x: rect.minX, y: rect.maxY))
            
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY)) //1
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY)) //2
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY)) //3
            
            
            //return to the path
            return path
    }
    
}
