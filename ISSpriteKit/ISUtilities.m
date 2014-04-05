//
//  ISUtilities.m
//  Example
//
//  Created by Luis Flores on 4/5/14.
//  Copyright (c) 2014 Iguana Studios. All rights reserved.
//

#import "ISUtilities.h"

@implementation ISUtilities

+ (void)flashScene:(SKScene *)scene {
    SKSpriteNode *flash = [SKSpriteNode node];
    flash.anchorPoint = CGPointZero;
    flash.size = scene.size;
    flash.color = [UIColor whiteColor];
    flash.alpha = 0.8;
    SKAction *fadeOut = [SKAction fadeOutWithDuration:0.6];
    [flash runAction:fadeOut completion:^{
        [flash removeFromParent];
    }];
    [scene addChild:flash];
}

+ (NSUInteger)randomNumber:(NSUInteger)lowerBound upperBound:(NSUInteger)upperBound {
    return lowerBound + arc4random() % (upperBound - lowerBound);
}

@end
