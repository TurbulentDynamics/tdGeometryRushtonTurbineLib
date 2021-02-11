//
//  MyClass.h
//  
//
//  Created by Vedran Ozir on 18.01.2021..
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class RushtonTurbineObjC;
@class ExtentsObjC;

@interface Pos3d_int : NSObject

@property int i;
@property int j;
@property int k;

@end

@interface tdLBGeometryRushtonTurbineLibObjC : NSObject

@property void* rushtonTurbineMidPointCPP; // RushtonTurbineMidPointCPP<NSObject*>*

-(instancetype)init:(RushtonTurbineObjC*)turbineData ext:(ExtentsObjC*) ext;

-(void)generateFixedGeometry;
-(void)generateRotatingNonUpdatingGeometry;
-(void)generateRotatingGeometry:(double)atTheta;
-(void)updateRotatingGeometry:(double)atTheta;

-(NSArray<Pos3d_int*>*)returnFixedGeometry;
-(NSArray<Pos3d_int*>*)returnRotatingNonUpdatingGeometry;
-(NSArray<Pos3d_int*>*)returnRotatingGeometry;

@end

NS_ASSUME_NONNULL_END
