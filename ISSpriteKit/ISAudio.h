//
//  ISAudio.h
//  Example
//
//  Created by Luis Flores on 4/5/14.
//  Copyright (c) 2014 Iguana Studios. All rights reserved.
//

@import AVFoundation;

@interface ISAudio : NSObject

+ (instancetype)sharedInstance;
- (void)playBackgroundMusic:(NSString *)filename;
- (void)pauseBackgroundMusic;
- (void)playSoundEffect:(NSString*)filename;

@end
