//
//  SKAction+ISExtras.m
//  Example
//
//  Created by Luis Flores on 4/7/14.
//  Copyright (c) 2014 Iguana Studios. All rights reserved.
//

#import "SKAction+ISExtras.h"

@implementation SKAction (ISExtras)

+ (instancetype)afterDelay:(NSTimeInterval)duration perform:(SKAction *)action {
	return [SKAction sequence:@[[SKAction waitForDuration:duration], action]];
}

+ (instancetype)afterDelay:(NSTimeInterval)duration runBlock:(dispatch_block_t)block {
	return [self afterDelay:duration perform:[SKAction runBlock:block]];
}

+ (instancetype)removeFromParentAfterDelay:(NSTimeInterval)duration {
	return [self afterDelay:duration perform:[SKAction removeFromParent]];
}

@end
