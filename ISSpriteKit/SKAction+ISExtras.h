//
//  SKAction+ISExtras.h
//  Example
//
//  Created by Luis Flores on 4/7/14.
//  Copyright (c) 2014 Iguana Studios. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface SKAction (ISExtras)

// Shorthand for:
//   [SKAction sequence:@[[SKAction waitForDuration:duration], action]]
//
+ (instancetype)afterDelay:(NSTimeInterval)duration perform:(SKAction *)action;

// Shorthand for:
//   [SKAction sequence:@[[SKAction waitForDuration:duration], [SKAction runBlock:^{ ... }]]]
//
+ (instancetype)afterDelay:(NSTimeInterval)duration runBlock:(dispatch_block_t)block;

// Shorthand for:
//   [SKAction sequence:@[[SKAction waitForDuration:duration], [SKAction removeFromParent]]]
//
+ (instancetype)removeFromParentAfterDelay:(NSTimeInterval)duration;

@end
