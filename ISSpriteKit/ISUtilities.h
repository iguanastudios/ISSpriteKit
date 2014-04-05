//
//  ISUtilities.h
//  Example
//
//  Created by Luis Flores on 4/5/14.
//  Copyright (c) 2014 Iguana Studios. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface ISUtilities : NSObject

+ (void)flashScene:(SKScene *)scene;
+ (NSUInteger)randomNumber:(NSUInteger)lowerBound upperBound:(NSUInteger)upperBound;

@end
