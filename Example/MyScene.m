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
@property (strong, nonatomic) ISParallaxNode *parallaxNode1;
@property (strong, nonatomic) ISParallaxNode *parallaxNode2;
@end

@implementation MyScene

- (id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        self.parallaxNode1 = [[ISParallaxNode alloc] initWithImageNamed:@"Horizontal" direction:ISScrollDirectionLeft];
        [self addChild: self.parallaxNode1];

        self.parallaxNode2 = [[ISParallaxNode alloc] initWithImageNamed:@"Horizontal" direction:ISScrollDirectionRight];
        self.parallaxNode2.pointPerSecond = 200;
        self.parallaxNode2.position = CGPointMake(0, 100);
        [self addChild: self.parallaxNode2];
    }

    return self;
}

- (void)update:(NSTimeInterval)currentTime {
    [self.parallaxNode1 update:currentTime];
    [self.parallaxNode2 update:currentTime];
}

@end
