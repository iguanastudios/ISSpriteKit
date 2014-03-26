//
//  MyScene.m
//  Example
//
//  Created by Luis Flores on 3/17/14.
//  Copyright (c) 2014 Iguana Studios. All rights reserved.
//

#import "MyScene.h"
#import "ISSpriteKit.h"

@interface MyScene ()
@property (strong, nonatomic) ISParallaxNode *parallaxNodeUpDirection;
@property (strong, nonatomic) ISParallaxNode *parallaxNodeDownDirection;
@property (strong, nonatomic) ISParallaxLayer *parallaxLayer;
@end

@implementation MyScene

- (id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        self.backgroundColor = [UIColor whiteColor];

        self.parallaxNodeUpDirection = [[ISParallaxNode alloc] initWithImageNamed:@"Vertical"
                                                                        direction:ISScrollDirectionUp];
        self.parallaxNodeUpDirection.zPosition = 1;
        [self addChild: self.parallaxNodeUpDirection];

        self.parallaxNodeDownDirection = [[ISParallaxNode alloc] initWithImageNamed:@"Vertical"
                                                                          direction:ISScrollDirectionDown];
        self.parallaxNodeDownDirection.pointPerSecond = 150;
        self.parallaxNodeDownDirection.position = CGPointMake(160, 0);
        [self addChild: self.parallaxNodeDownDirection];

        // ISParallaxLayer can contain several ISParallaxNode
        self.parallaxLayer = [ISParallaxLayer node];

        ISParallaxNode *parallaxNodeRightDirection = [[ISParallaxNode alloc] initWithImageNamed:@"Horizontal"
                                                                                      direction:ISScrollDirectionRight];
        [self.parallaxLayer addParallaxNode:parallaxNodeRightDirection];

        ISParallaxNode *parallaxNodeLeftDirection = [[ISParallaxNode alloc] initWithImageNamed:@"Horizontal"
                                                                            direction:ISScrollDirectionLeft];
        parallaxNodeLeftDirection.position = CGPointMake(0, self.frame.size.height / 2);
        parallaxNodeLeftDirection.pointPerSecond = 150;
        [self.parallaxLayer addParallaxNode:parallaxNodeLeftDirection];

        [self addChild:self.parallaxLayer];
    }

    return self;
}

- (void)update:(NSTimeInterval)currentTime {
    [self.parallaxNodeUpDirection update:currentTime];
    [self.parallaxNodeDownDirection update:currentTime];
    [self.parallaxLayer update:currentTime];
}

@end
