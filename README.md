ISSpriteKit ![License MIT](https://go-shields.herokuapp.com/license-MIT-blue.png)
===========
[![Badge w/ Version](https://cocoapod-badges.herokuapp.com/v/ISSpriteKit/badge.png)](http://cocoadocs.org/docsets/ISSpriteKit)
[![Badge w/ Platform](https://cocoapod-badges.herokuapp.com/p/ISSpriteKit/badge.svg)](http://cocoadocs.org/docsets/ISSpriteKit)


Sprite Kit helpers, extensions and utilities.

## Installation
The best and easiest way is to use [CocoaPods](http://cocoapods.org).

    pod 'ISSpriteKit'


## ISParallaxNode

Highly customizable node that simulates a parallax scroller.

- It supports every scroll direction.
- Velocity control (Points per second).

### Usage

```
#import "MyScene.h"
#import "ISParallaxNode.h"

@interface MyScene ()
@property (strong, nonatomic) ISParallaxNode *parallaxNode;
@end

@implementation MyScene

- (id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        self.parallaxNode = [[ISParallaxNode alloc] initWithImageNamed:@"Horizontal" direction:ISScrollDirectionLeft];
        [self addChild: self.parallaxNode];
    }

    return self;
}

- (void)update:(NSTimeInterval)currentTime {
    [self.parallaxNode update:currentTime];
}

@end
```

## Licence

ISSpriteKit is licensed under the [MIT Licence](LICENSE).
