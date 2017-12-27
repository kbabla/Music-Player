//
//  PlaylistDetailViewController.h
//  Algorythem
//
//  Created by Krishna Babla on 12/20/17.
//  Copyright © 2017 Krishna Babla. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>
@class Playlist;
@interface PlaylistDetailViewController : UIViewController
@property (strong, nonatomic) Playlist *playlist;
@property (weak, nonatomic) IBOutlet UIImageView *playlistCoverImage;
@property (weak, nonatomic) IBOutlet UILabel *playlistTitle;
@property (weak, nonatomic) IBOutlet UILabel *playlistDescription;
@property (weak, nonatomic) IBOutlet UILabel *playlistArtist0;
@property (weak, nonatomic) IBOutlet UILabel *playlistArtist1;
@property (weak, nonatomic) IBOutlet UILabel *playlistArtist2;
@property (weak, nonatomic) IBOutlet UIImageView *playOrPause0;

@property (strong, nonatomic) AVAudioPlayer *audioPlayer;




@end
