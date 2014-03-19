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

@implementation MyScene {
    ISParallaxNode *_parallaxNode;
}

- (id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        _parallaxNode = [[ISParallaxNode alloc] initWithImageNamed:@"Horizontal1" direction:ISScrollDirectionLeft speedFactor:3.1];
        [self addChild: _parallaxNode];
        self.backgroundColor = [UIColor whiteColor];
    }

    return self;
}

@end
