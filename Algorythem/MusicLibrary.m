//
//  MusicLibrary.m
//  Algorythem
//
//  Created by Krishna Babla on 12/21/17.
//  Copyright © 2017 Krishna Babla. All rights reserved.
//

#import "MusicLibrary.h"

NSString *const kTitle = @"Title";
NSString *const kDescription = @"Description";
NSString *const kIcon = @"Icon";
NSString *const kLargeIcon = @"Large Icon";
NSString *const kBackgroundColor = @"Background Color";
NSString *const kArtists = @"Artist";

@implementation MusicLibrary



-(instancetype)init {
    self = [super init];
    if(self){
        //set up dictionary
        
        _library = @[@{kTitle: @"Rise and Shine",
                       kDescription: @"Get your morning going by singing along to these classic tracks as you hit the shower bright and early!",
                       kIcon: @"coffee.pdf",
                       kLargeIcon: @"coffee_large.pdf",
                       kBackgroundColor: @{@"red": @230.0, @"green": @80.0, @"blue": @164.0, @"alpha": @1.0},
                       kArtists: @[@"Kanye West", @"Vacationer", @"Matt and Kim", @"MGMT", @"Echosmith", @"Tokyo Police Club", @"La Femme"]
                       },
                     @{kTitle: @"Runner's Rampage",
                       kDescription: @"Hit the track hard and get in beast mode with everything from dance tracks to classic hip hop. All the right fuel to motivate you to push your limits.",
                       kIcon: @"running.pdf",
                       kLargeIcon: @"running_large.pdf",
                       kBackgroundColor: @{@"red": @127.0, @"green": @242.0, @"blue": @71.0, @"alpha": @1.0},
                       kArtists: @[@"Kanye West", @"Calvin Harris", @"Pitbull", @"Iggy Azalea", @"Rita Ora", @"Drake", @"Lil Wayne"]
                       },
                     @{kTitle: @"Joy Ride",
                       kDescription: @"Let this eclectic playlist take you wherever your heart desires. Cruise along in style to these energetic beats.",
                       kIcon: @"helmet.pdf",
                       kLargeIcon: @"helmet_large.pdf",
                       kBackgroundColor: @{@"red": @2.0, @"green": @45.0, @"blue": @148.0, @"alpha": @1.0},
                       kArtists: @[@"Kanye West", @"Kid Cudi", @"Daft Punk", @"kIcona Pop", @"Gesaffelstien", @"Roksnoix", @"deadmau5"]
                       },
                     @{kTitle: @"In The Zone",
                       kDescription: @"Keep calm and focus. Shut out the noise around you and grind away with some mind sharpening instrumental tunes.",
                       kIcon: @"laptop.pdf",
                       kLargeIcon: @"laptop_large.pdf",
                       kBackgroundColor: @{@"red": @234.0, @"green": @175.0, @"blue": @49.0, @"alpha": @1.0},
                       kArtists: @[@"Kanye West", @"Snoop Dogg", @"Com Truise", @"D12", @"Flying Lotus", @"Kanye West", @"Rundfunk"]
                       },
                     @{kTitle: @"Button Masher",
                       kDescription: @"Turn up the speakers and get out of my way! The ultimate gaming playlist to get you hyped up and ready for the crazy fun that’s about to happen.",
                       kIcon: @"joystick.pdf",
                       kLargeIcon: @"joystick_large.pdf",
                       kBackgroundColor: @{@"red": @213.0, @"green": @78.0, @"blue": @46.0, @"alpha": @1.0},
                       kArtists: @[@"Kanye West", @"The Game", @"2 Chainz", @"Jay Z", @"T.I.", @"Rihanna", @"Eminem"]
                       },
                     @{kTitle: @"Futbal Remix",
                       kDescription: @"There’s nothing like the world’s game. Kick around the field with this eclectic playlist from around the world. Futbal for life.",
                       kIcon: @"ball.pdf",
                       kLargeIcon: @"ball_large.pdf",
                       kBackgroundColor: @{@"red": @78.0, @"green": @180.0, @"blue": @215.0, @"alpha": @1.0},
                       kArtists: @[@"Kanye West", @"Santana", @"Wyclef Jean", @"Aloe Blacc", @"Pitbull", @"Enrique Iglesias", @"Ricky Martin"]
                       
                       }];
    }
    return self;
}

@end
