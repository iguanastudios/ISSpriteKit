//
//  ISParallaxLayer.h
//  Example
//
//  Created by Luis Flores on 3/25/14.
//  Copyright (c) 2014 Iguana Studios. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "ISParallaxNode.h"

@interface ISParallaxLayer : SKNode

- (void)addParallaxNode:(ISParallaxNode *)parallaxNode;
- (void)update:(NSTimeInterval)currentTime;

@end
