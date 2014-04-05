//
//  ISActions.m
//  Example
//
//  Created by Luis Flores on 4/5/14.
//  Copyright (c) 2014 Iguana Studios. All rights reserved.
//

#import "ISActions.h"

@implementation ISActions

+ (SKAction *)blinkWithDuration:(CGFloat)duration blinkTimes:(CGFloat)blinkTimes {
    return [SKAction customActionWithDuration:duration
                                  actionBlock: ^(SKNode *node, CGFloat elapsedTime) {
                                      float slice = duration / blinkTimes;
                                      float remainder = fmodf(elapsedTime, slice);
                                      node.hidden = remainder > slice / 2;
                                  }];
}

@end
