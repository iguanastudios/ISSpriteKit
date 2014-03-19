//
//  ISUtils.h
//  Example
//
//  Created by Luis Flores on 3/19/14.
//  Copyright (c) 2014 Iguana Studios. All rights reserved.
//

#import <GLKit/GLKMath.h>

#define INLINE      static __inline__

INLINE CGPoint CGPointFromGLKVector2(GLKVector2 vector) {
    return CGPointMake(vector.x, vector.y);
}

INLINE GLKVector2 GLKVector2FromCGPoint(CGPoint point) {
    return GLKVector2Make(point.x, point.y);
}

INLINE CGPoint CGPointAdd(CGPoint point1, CGPoint point2) {
    return CGPointMake(point1.x + point2.x, point1.y + point2.y);
}

INLINE CGPoint CGPointSubstract(CGPoint point1, CGPoint point2) {
    return CGPointMake(point1.x - point2.x, point1.y - point2.y);
}

INLINE CGPoint CGPointMultiplyScalar(CGPoint point, CGFloat value) {
    return CGPointFromGLKVector2(GLKVector2MultiplyScalar(GLKVector2FromCGPoint(point), value));
}