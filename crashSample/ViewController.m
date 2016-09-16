//
//  ViewController.m
//  crashSample
//
//  Created by Hari Prasad on 16/09/16.
//  Copyright © 2016 HAppiestMinds. All rights reserved.
//

#import "ViewController.h"
#import <Crashlytics/Crashlytics.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //Programatically create Crash reporter
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(20, 50, 100, 30);
    [button setTitle:@"Crash" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(crashButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button2.frame = CGRectMake(100, 100, 100, 30);
    [button2 setTitle:@"Crash2" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(crashButtonTapped2:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
    

    
    
}
-(IBAction)crashButtonTapped2:(id)sender
{
     [[Crashlytics sharedInstance]crash];

}


-(IBAction)crashButtonTapped:(id)sender
{
    //Send crash to crashlytics
   // [[Crashlytics sharedInstance]crash];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
