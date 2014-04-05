//
//  ISAudio.m
//  Example
//
//  Created by Luis Flores on 4/5/14.
//  Copyright (c) 2014 Iguana Studios. All rights reserved.
//

#import "ISAudio.h"

@interface ISAudio()
@property (nonatomic) AVAudioPlayer *backgroundMusicPlayer;
@property (nonatomic) AVAudioPlayer *soundEffectPlayer;
@end

@implementation ISAudio

+ (instancetype)sharedInstance {
    static dispatch_once_t pred;
    static ISAudio * _sharedInstance;
    dispatch_once(&pred, ^{
        _sharedInstance = [[self alloc] init];
    });
    return _sharedInstance;
}

- (void)playBackgroundMusic:(NSString *)filename {
    NSError *error;
    NSURL * backgroundMusicURL = [[NSBundle mainBundle] URLForResource:filename withExtension:nil];
    self.backgroundMusicPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:backgroundMusicURL
                                                                        error:&error];
    self.backgroundMusicPlayer.numberOfLoops = -1;
    [self.backgroundMusicPlayer prepareToPlay];
    [self.backgroundMusicPlayer play];
}

- (void)pauseBackgroundMusic {
    [self.backgroundMusicPlayer pause];
}

- (void)playSoundEffect:(NSString*)filename {
    NSError *error;
    NSURL * soundEffectURL = [[NSBundle mainBundle] URLForResource:filename withExtension:nil];
    self.soundEffectPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundEffectURL error:&error];
    self.soundEffectPlayer.numberOfLoops = 0;
    [self.soundEffectPlayer prepareToPlay];
    [self.soundEffectPlayer play];
}

@end
