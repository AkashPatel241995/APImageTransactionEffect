//
//  SecondViewController.m
//  MagicTransition
//
//  Created by Boyce on 05/18/2018.
//  Copyright (c) 2018 Akash. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface SecondViewController ()
@property (nonatomic, strong) UIPercentDrivenInteractiveTransition *percentDrivenTransition;
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Second";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)push:(id)sender {
    ThirdViewController *thirdVC = [[ThirdViewController alloc] initWithNibName:@"ThirdViewController" bundle:nil];
    
    // preload views to the memory
    [thirdVC view];
    
    // setup fromviews array and toviews array
    NSArray *fromViews = [NSArray arrayWithObjects:self.imageView1, self.imageView2, self.label1, nil];
    NSArray *toViews = [NSArray arrayWithObjects:thirdVC.imageView1, thirdVC.imageView2, thirdVC.label1, nil];
    
    [self pushViewController:thirdVC fromViews:fromViews toViews:toViews duration:1.0];
}

@end
