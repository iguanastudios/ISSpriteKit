//
//  MyScene.m
//  Example
//
//  Created by Luis Flores on 3/17/14.
//  Copyright (c) 2014 Iguana Studios. All rights reserved.
//

#import "MyScene.h"
#import "ISParallaxNode.h"
#import "ISUtils.h"

@interface MyScene ()
@property (strong, nonatomic) ISParallaxNode *parallaxNodeUp;
@property (strong, nonatomic) ISParallaxNode *parallaxNodeDown;
@property (strong, nonatomic) ISParallaxNode *parallaxNodeRight;
@property (strong, nonatomic) ISParallaxNode *parallaxNodeLeft;
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

        self.parallaxNodeRight = [[ISParallaxNode alloc] initWithImageNamed:@"Horizontal" direction:ISScrollDirectionRight];
        [self addChild: self.parallaxNodeRight];

        self.parallaxNodeLeft = [[ISParallaxNode alloc] initWithImageNamed:@"Horizontal" direction:ISScrollDirectionLeft];
        self.parallaxNodeLeft.position = CGPointMake(0, self.frame.size.height / 2);
        self.parallaxNodeLeft.pointPerSecond = 150;
        [self addChild: self.parallaxNodeLeft];
    }

    return self;
}

- (void)update:(NSTimeInterval)currentTime {
    [self.parallaxNodeUp update:currentTime];
    [self.parallaxNodeDown update:currentTime];
    [self.parallaxNodeRight update:currentTime];
    [self.parallaxNodeLeft update:currentTime];
}

@end
