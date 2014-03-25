//
//  ISParallaxLayer.m
//  Example
//
//  Created by Luis Flores on 3/25/14.
//  Copyright (c) 2014 Iguana Studios. All rights reserved.
//

#import "ISParallaxLayer.h"

@implementation ISParallaxLayer

#pragma mark - Public methods

- (void)addParallaxNode:(ISParallaxNode *)parallaxNode {
    parallaxNode.name = @"ISParallaxNode";
    [self addChild: parallaxNode];
}

- (void)update:(NSTimeInterval)currentTime {
    [self enumerateChildNodesWithName:@"ISParallaxNode"
                           usingBlock:^(SKNode *node, BOOL *stop){
        ISParallaxNode *parallaxNode = (ISParallaxNode *) node;
        [parallaxNode update:currentTime];
    }];
}

@end
