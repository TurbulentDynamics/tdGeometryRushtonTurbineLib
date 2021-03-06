//
//  MyClass.m
//  
//
//  Created by Vedran Ozir on 19.01.2021..
//

#import "RushtonTurbineObjC.h"
#import "../tdLBGeometryRushtonTurbineLibCPP/GeomMidPoint.hpp"

@implementation RushtonTurbineObjC

-(instancetype)init:(int)gridX {
    
    self = [super init];
    if (self) {

        self.rushtonTurbineCPP = new RushtonTurbine(gridX);
    }
    
    return self;
}

@end
