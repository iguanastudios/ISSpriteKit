//
//  ISParallaxNode.h
//  Example
//
//  Created by Luis Flores on 3/17/14.
//  Copyright (c) 2014 Iguana Studios. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

/// Scroll direction
typedef NS_ENUM(NSUInteger, ISScrollDirection) {
    ISScrollDirectionUp,
    ISScrollDirectionDown,
    ISScrollDirectionRight,
    ISScrollDirectionLeft
};

@interface ISParallaxNode : SKNode

// Move points per second.
// Defaults to 100
@property (assign, nonatomic) CGFloat pointPerSecond;

- (instancetype)initWithImageNamed:(NSString *)image direction:(ISScrollDirection)direction;
- (void)update:(NSTimeInterval)currentTime;

@end
