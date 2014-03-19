//
//  ISParallaxNode.m
//  Example
//
//  Created by Luis Flores on 3/17/14.
//  Copyright (c) 2014 Iguana Studios. All rights reserved.
//

#import "ISParallaxNode.h"
#import "ISUtils.h"

@interface ISParallaxNode ()
@property (assign, nonatomic) ISScrollDirection direction;
@property (assign, nonatomic) NSTimeInterval lastUpdateTime;
@property (assign, nonatomic) NSTimeInterval deltaTime;
@property (strong, nonatomic) SKSpriteNode *firstBackground;
@property (strong, nonatomic) SKSpriteNode *secondBackground;
@end

@implementation ISParallaxNode

#pragma mark - Initialization

- (instancetype)initWithImageNamed:(NSString *)image direction:(ISScrollDirection)direction {
    if (self = [super init]) {
        self.position = CGPointMake(0, 0);
        self.direction = direction;
        self.pointPerSecond = 100.0;

        self.firstBackground = [SKSpriteNode spriteNodeWithImageNamed:image];
        self.firstBackground.anchorPoint = CGPointZero;
        [self addChild:self.firstBackground];

        self.secondBackground = [SKSpriteNode spriteNodeWithImageNamed:image];
        self.secondBackground.anchorPoint = CGPointZero;
        [self addChild:self.secondBackground];

        switch (self.direction) {
            case ISScrollDirectionUp:
                break;
            case ISScrollDirectionDown:
                break;
            case ISScrollDirectionRight:
                break;
            default:
                self.firstBackground.position = CGPointMake(0, 0);
                self.secondBackground.position = CGPointMake(self.secondBackground.size.width, 0);
                break;
        }
    }
    
    return self;
}

#pragma mark - Public methods

- (void)update:(NSTimeInterval)currentTime {
    if (self.lastUpdateTime) {
        self.deltaTime = currentTime - self.lastUpdateTime;
    } else {
        self.deltaTime = 0;
    }

    self.lastUpdateTime = currentTime;

    switch (self.direction) {
        case ISScrollDirectionUp:
            [self scrollUp];
            break;
        case ISScrollDirectionDown:
            [self scrollDown];
            break;
        case ISScrollDirectionRight:
            [self scrollRight];
            break;
        default:
            [self scrollLeft];
            break;
    }
}

#pragma mark - Private methods

- (void)scrollUp {

}

- (void)scrollDown {

}

- (void)scrollRight {

}

- (void)scrollLeft {
    CGPoint backgroundVelocity = CGPointMake(-self.pointPerSecond, 0);
    CGPoint amountToMove = CGPointMultiplyScalar(backgroundVelocity, self.deltaTime);
    self.position = CGPointAdd(self.position, amountToMove);

    [self checkLeftPosition:self.firstBackground];
    [self checkLeftPosition:self.secondBackground];
}

- (void)checkLeftPosition:(SKSpriteNode *)node {
    CGPoint screenPosition = [self convertPoint:node.position toNode:self.scene];
    if (screenPosition.x <= -node.size.width) {
        node.position = CGPointMake(node.position.x + node.size.width * 2, node.position.y);
    }
}

@end
