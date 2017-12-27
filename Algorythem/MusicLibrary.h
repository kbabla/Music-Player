//
//  MusicLibrary.h
//  Algorythem
//
//  Created by Krishna Babla on 12/21/17.
//  Copyright © 2017 Krishna Babla. All rights reserved.
//

//Local Data for the App.
#import <Foundation/Foundation.h>

extern NSString *const kTitle;
extern NSString *const kDescription;
extern NSString *const kIcon;
extern NSString *const kLargeIcon;
extern NSString *const kBackgroundColor;
extern NSString *const kArtists ;

@interface MusicLibrary : NSObject

@property (strong, nonatomic) NSArray *library;

@end
