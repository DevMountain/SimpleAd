//
//  SAViewController.m
//  SimpleAd
//
//  Created by Joshua Howland on 7/1/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "SAViewController.h"
@import iAd;

@interface SAViewController () <ADBannerViewDelegate>

@property (weak, nonatomic) IBOutlet ADBannerView *bannerView;

@end

@implementation SAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // fetches interstitial ad content and readies it for display in the SAInterstitialViewController class (or anywhere else the app wants to present it)
    
    [UIViewController prepareInterstitialAds];
    
    // moves banner view off screen and waits for ad to load
    self.bannerView.frame = CGRectMake(0, CGRectGetHeight(self.view.frame), self.bannerView.frame.size.width, self.bannerView.frame.size.height);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)bannerViewDidLoadAd:(ADBannerView *)banner {
    
    // when the ad loads we reset the frame to display the view
    
    banner.frame = CGRectMake(CGRectGetMidX(self.view.frame) - banner.frame.size.width / 2, CGRectGetMidY(self.view.frame) - banner.frame.size.height / 2, banner.frame.size.width, banner.frame.size.height);
    
    NSLog(@"Ad loaded.");
}

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error {
    
    // when unable to present an ad, you should remove the ad view by either removing from the superview or moving it off screen
    
    // moves banner out of frame
    banner.frame = CGRectMake(0, CGRectGetHeight(self.view.frame), self.bannerView.frame.size.width, self.bannerView.frame.size.height);
    
    NSLog(@"Ad failed to load, error: %@", error.localizedFailureReason);
}

- (void)bannerViewActionDidFinish:(ADBannerView *)banner {
    NSLog(@"User dismissed or tapped on ad.");
}

@end
