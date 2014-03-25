//
//  MyScene.m
//  Example
//
//  Created by Luis Flores on 3/17/14.
//  Copyright (c) 2014 Iguana Studios. All rights reserved.
//

#import "MyScene.h"
#import "ISParallaxLayer.h"
#import "ISParallaxNode.h"
#import "ISUtils.h"

@interface MyScene ()
@property (strong, nonatomic) ISParallaxNode *parallaxNodeUp;
@property (strong, nonatomic) ISParallaxNode *parallaxNodeDown;
@property (strong, nonatomic) ISParallaxLayer *parallaxLayer;
@end

@implementation MyScene

- (id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        self.backgroundColor = [UIColor whiteColor];

        self.parallaxNodeUp = [[ISParallaxNode alloc] initWithImageNamed:@"Vertical" direction:ISScrollDirectionUp];
        self.parallaxNodeUp.zPosition = 1;
        [self addChild: self.parallaxNodeUp];

        self.parallaxNodeDown = [[ISParallaxNode alloc] initWithImageNamed:@"Vertical" direction:ISScrollDirectionDown];
        self.parallaxNodeDown.pointPerSecond = 150;
        self.parallaxNodeDown.position = CGPointMake(160, 0);
        [self addChild: self.parallaxNodeDown];

        // ISParallaxLayer can contain several ISParallaxNode
        self.parallaxLayer = [ISParallaxLayer node];

        ISParallaxNode *parallaxNodeRight = [[ISParallaxNode alloc] initWithImageNamed:@"Horizontal"
                                                                             direction:ISScrollDirectionRight];
        [self.parallaxLayer addParallaxNode:parallaxNodeRight];

        ISParallaxNode *parallaxNodeLeft = [[ISParallaxNode alloc] initWithImageNamed:@"Horizontal"
                                                                            direction:ISScrollDirectionLeft];
        parallaxNodeLeft.position = CGPointMake(0, self.frame.size.height / 2);
        parallaxNodeLeft.pointPerSecond = 150;
        [self.parallaxLayer addParallaxNode:parallaxNodeLeft];

        [self addChild:self.parallaxLayer];
    }

    return self;
}

- (void)update:(NSTimeInterval)currentTime {
    [self.parallaxNodeUp update:currentTime];
    [self.parallaxNodeDown update:currentTime];
    [self.parallaxLayer update:currentTime];
}

@end
