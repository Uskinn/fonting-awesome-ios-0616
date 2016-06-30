//
//  ViewController.m
//  Font Awesome
//
//  Created by Sergey Nevzorov on 6/30/16.
//  Copyright © 2016 Sergey Nevzorov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *myButton;
@property (strong, nonatomic) FAKFontAwesome *starIcon;
@property (strong, nonatomic) FAKFontAwesome *cabIcon;
@property (nonatomic) BOOL isLabel;
@property (strong, nonatomic) CWStatusBarNotification *notification;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.notification = [CWStatusBarNotification new];
    //self.notification = CWNotificationStyleStatusBarNotification;


    self.notification.notificationLabelBackgroundColor = [UIColor blackColor];
    self.notification.notificationLabelTextColor = [UIColor greenColor];
    
    self.starIcon = [FAKFontAwesome starIconWithSize:350];
    [self.starIcon addAttribute:NSForegroundColorAttributeName value:[UIColor redColor]];
    [self.myButton setAttributedTitle:[self.starIcon attributedString] forState:UIControlStateNormal];
    self.isLabel = YES;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonPressed:(id)sender {
   
    if (self.isLabel == NO) {
        self.starIcon = [FAKFontAwesome starIconWithSize:350];
        [self.starIcon addAttribute:NSForegroundColorAttributeName value:[UIColor redColor]];
        [self.myButton setAttributedTitle:[self.starIcon attributedString] forState:UIControlStateNormal];
        self.isLabel = YES;
    } else if (self.isLabel == YES) {
        
        self.cabIcon = [FAKFontAwesome cabIconWithSize:350];
        [self.cabIcon addAttribute:NSForegroundColorAttributeName value:[UIColor orangeColor]];
        [self.myButton setAttributedTitle:[self.cabIcon attributedString] forState:UIControlStateNormal];
         self.isLabel = NO;
     }

    [self.notification displayNotificationWithMessage:@"How are you doing, Lloyd?"
                                          forDuration:1.0f];
    

    

        

    
   
    
}

@end
