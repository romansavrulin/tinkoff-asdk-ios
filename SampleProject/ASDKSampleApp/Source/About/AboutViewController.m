//
//  AboutViewController.m
//  ASDKSampleApp
//
//  Created by e.orlova on 15.02.16.
//  Copyright © 2016 TCS Bank. All rights reserved.
//

#import "AboutViewController.h"
#import "ASDKUI.h"

@interface AboutViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *logoImageView;
@property (weak, nonatomic) IBOutlet UILabel *versionLabel;

@end

@implementation AboutViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setTitle:NSLocalizedString(@"OnlineShop", @"Интернет магазин")];
    
    [self.versionLabel setText:[self sdkVersionString]];
    
    UIBarButtonItem *cancelButton = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"Cancel", @"Отмена") 
                                                                     style:UIBarButtonItemStylePlain
                                                                    target:self
                                                                    action:@selector(closeSelf)];
    
    [self.navigationItem setRightBarButtonItem:cancelButton];
}

- (void)closeSelf
{
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

- (NSString *)sdkVersionString
{    
    return @"Tinkoff Acquiring SDK v 1.0.0";
}


@end
