//
//  ViewController.m
//  Algorythem
//
//  Created by Krishna Babla on 12/20/17.
//  Copyright © 2017 Krishna Babla. All rights reserved.
//

#import "playlistMasterViewController.h"
#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface playlistMasterViewController ()

@end

@implementation playlistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    //Load Playlist information into first view
    for (NSUInteger index = 0; index < self.playlistImageViews.count; index++) {
          Playlist *playlist = [[Playlist alloc] initWithIndex:index];
        UIImageView * playlistImageView = self.playlistImageViews[index];
        playlistImageView.image = playlist.playlistIcon;
        playlistImageView.backgroundColor =playlist.backgroundColor;
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Transition from Main View to Playlist View
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqual:@"showPlaylistDetail"]) {
        
        UIImageView *playlistImageView =  (UIImageView *)[sender view];
        
        //Load Correct version of Playlist View
        if ([self.playlistImageViews containsObject:playlistImageView]) {
            NSUInteger index = [self.playlistImageViews indexOfObject:playlistImageView];
            
            PlaylistDetailViewController *playlistDetailController = (PlaylistDetailViewController *)segue.destinationViewController;
            
            playlistDetailController.playlist = [[Playlist alloc] initWithIndex:index];
        }
        
        
        
        
    }
}

- (IBAction)showPlaylistDetail:(id)sender {
    [self performSegueWithIdentifier:@"showPlaylistDetail" sender:sender];
}



@end
