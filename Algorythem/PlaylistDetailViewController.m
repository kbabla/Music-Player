//
//  PlaylistDetailViewController.m
//  Algorythem
//
//  Created by Krishna Babla on 12/20/17.
//  Copyright © 2017 Krishna Babla. All rights reserved.
//

#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistDetailViewController ()

@end

@implementation PlaylistDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if(self.playlist){
        self.playlistCoverImage.image = self.playlist.playlistIconLarge;
        self.playlistCoverImage.backgroundColor = self.playlist.backgroundColor;
        self.playlistTitle.text = self.playlist.playlistTitle;
        self.playlistDescription.text = self.playlist.playlistDescription;
        
        // Artist Labels from Artist array in MusicLibrary
        self.playlistArtist0.text = self.playlist.playlistArtists[0];
        self.playlistArtist1.text = self.playlist.playlistArtists[1];
        self.playlistArtist2.text = self.playlist.playlistArtists[2];
        
        //Play/Pause Button
        _playOrPause0.image = [UIImage imageNamed:@"Play.png"];
        
        //Load Sound (Only one sample song to demonstration using AVFoundation and Audio Player)
        NSError *error;
        NSURL *sampleAudio = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/01 Ultralight Beam.mp3", [[NSBundle mainBundle] resourcePath]]];
        
        _audioPlayer = [[AVAudioPlayer alloc]initWithContentsOfURL:sampleAudio error: &error];
        _audioPlayer.volume = 1;
        _audioPlayer.prepareToPlay;
        }
        
    }
    
    



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Tap Gesture to change play or pause image, and play and pause audio file
- (IBAction)changePlayOrPause:(id)sender {
    UIImage* image1 = [UIImage imageNamed:@"Play.png"];
    UIImage* image2 = [UIImage imageNamed:@"Pause.jpg"];
      UIImage* currentImage = _playOrPause0.image;
  
    
    if([image1 isEqual:currentImage]){
        _playOrPause0.image = [UIImage imageNamed:@"Pause.jpg"];
    NSLog(@"It made it here");
        currentImage = image2;
        _audioPlayer.play;
        
        
    }

    else if([image2 isEqual:currentImage]){
          _playOrPause0.image = [UIImage imageNamed:@"Play.png"];
        currentImage = image1;
        _audioPlayer.pause;
    }
    

}





@end
