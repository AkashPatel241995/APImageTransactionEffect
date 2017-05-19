//
//  SecondViewController.h
//  MagicTransition
//
//  Created by Boyce on 05/18/2018.
//  Copyright (c) 2018 Akash. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIViewController+BCMagicTransition.h"

@interface SecondViewController : UIViewController <BCMagicTransitionProtocol>

@property (nonatomic, weak) IBOutlet UILabel *label1;
@property (nonatomic, weak) IBOutlet UIImageView *imageView1;
@property (nonatomic, weak) IBOutlet UIImageView *imageView2;

@end
