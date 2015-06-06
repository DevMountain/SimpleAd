//
//  SAInterstitialViewController.m
//  SimpleAd
//
//  Created by Caleb Hicks on 3/18/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "SAInterstitialViewController.h"
@import iAd;

@interface SAInterstitialViewController ()

@end

@implementation SAInterstitialViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)displayInterstitial:(id)sender {
    
    // If the interstitial managed to load, then we'll present it now.
    
    [self requestInterstitialAdPresentation];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
