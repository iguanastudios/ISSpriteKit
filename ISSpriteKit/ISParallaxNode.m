//
//  ISParallaxNode.m
//  Example
//
//  Created by Luis Flores on 3/17/14.
//  Copyright (c) 2014 Iguana Studios. All rights reserved.
//

#import "ISParallaxNode.h"

@interface ISParallaxNode ()
@property (strong, nonatomic) NSString *image;
@property (assign, nonatomic) ISScrollDirection direction;
@property (assign, nonatomic) CGFloat speedFactor;
@property (strong, nonatomic) SKSpriteNode *firstScrollNode;
@property (strong, nonatomic) SKSpriteNode *secondScrollNode;
@property (assign, nonatomic) CGSize nodeSize;
@end

@implementation ISParallaxNode

#pragma mark - Initialization

- (instancetype)initWithImageNamed:(NSString *)image direction:(ISScrollDirection)direction speedFactor:(CGFloat)speedFactor {
    if (self = [super init]) {
        self.position = CGPointMake(0, 0);
        self.image = image;
        self.direction = direction;
        self.speedFactor = MAX(speedFactor, 1.0);

        self.firstScrollNode = [SKSpriteNode spriteNodeWithImageNamed:self.image];
        self.firstScrollNode.anchorPoint = CGPointZero;

        self.secondScrollNode = [SKSpriteNode spriteNodeWithImageNamed:self.image];
        self.secondScrollNode.anchorPoint = CGPointZero;

        self.nodeSize = self.firstScrollNode.size;

        switch (direction) {
            case ISScrollDirectionUp:
                [self scrollUp];
                break;
            case ISScrollDirectionDown:
                [self scrollDown];
                break;
            case ISScrollDirectionRight:
                [self scrollRight];
                break;
            case ISScrollDirectionLeft:
                [self scrollLeft];
                break;
            default:
                break;
        }
    }
    
    return self;
}

#pragma mark - Private methods

- (void)scrollUp {

}

- (void)scrollDown {

}

- (void)scrollRight {

}

- (void)scrollLeft {
    self.firstScrollNode.position = CGPointMake(0, 0);
    self.secondScrollNode.position = CGPointMake(self.nodeSize.width, 0);

    SKAction *scrollNodeBefore = [SKAction moveToX:-self.nodeSize.width
                                          duration:self.speedFactor];
    SKAction *scrollNodeCenter = [SKAction moveToX:self.secondScrollNode.frame.origin.x - self.nodeSize.width
                                          duration:self.speedFactor];

    SKAction *moveFirstNode = [SKAction runBlock:^{
        self.firstScrollNode.position = CGPointMake(self.nodeSize.width,
                                                    self.firstScrollNode.frame.origin.y);
    }];
    SKAction *moveSecondNode = [SKAction runBlock:^{
        self.secondScrollNode.position = CGPointMake(self.nodeSize.width,
                                                     self.secondScrollNode.frame.origin.y);
    }];

    SKAction *firstNodeSequence = [SKAction sequence:@[scrollNodeBefore, moveFirstNode, scrollNodeCenter]];
    SKAction *secondNodeSequence = [SKAction sequence:@[scrollNodeCenter, scrollNodeBefore, moveSecondNode]];

    [self.firstScrollNode runAction: [SKAction repeatActionForever:firstNodeSequence]];
    [self.secondScrollNode runAction: [SKAction repeatActionForever:secondNodeSequence]];

    [self addChild: self.firstScrollNode];
    [self addChild: self.secondScrollNode];
}

@end
