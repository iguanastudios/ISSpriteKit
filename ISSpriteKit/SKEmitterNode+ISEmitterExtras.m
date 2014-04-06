//
//  SKEmitterNode+ISEmitterExtras.m
//  Example
//
//  Created by Luis Flores on 4/6/14.
//  Copyright (c) 2014 Iguana Studios. All rights reserved.
//

#import "SKEmitterNode+ISEmitterExtras.h"

@implementation SKEmitterNode (ISEmitterExtras)

+ (instancetype)emitterNamed:(NSString *)name {
	return [NSKeyedUnarchiver unarchiveObjectWithFile:[[NSBundle mainBundle] pathForResource:name ofType:@"sks"]];
}


@end
