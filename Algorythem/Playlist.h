//
//  Playlist.h
//  Algorythem
//
//  Created by Krishna Babla on 12/21/17.
//  Copyright © 2017 Krishna Babla. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Playlist : NSObject
@property (strong, nonatomic) NSString *playlistTitle;
@property (strong, nonatomic) NSString *playlistDescription;
@property (strong, nonatomic) UIImage *playlistIcon;
@property (strong, nonatomic) UIImage *playlistIconLarge;
@property (strong, nonatomic) NSArray *playlistArtists;
@property (strong, nonatomic) UIColor *backgroundColor;

-(instancetype)initWithIndex: (NSUInteger) index;
@end
