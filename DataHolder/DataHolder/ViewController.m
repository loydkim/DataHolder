//
//  ViewController.m
//  DataHolder
//
//  Created by YOUNGSIC KIM on 2017-06-24.
//  Copyright © 2017 YOUNGSIC KIM. All rights reserved.
//

#import "ViewController.h"
#import "DataHolder.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    [DataHolder sharedInstance].age = 30;
//    [DataHolder sharedInstance].name = @"LoydKim";
//    [[DataHolder sharedInstance] saveData];
    
    //keep the data.
    [[DataHolder sharedInstance] loadData];
    NSLog(@"My age is %d and my name is %@",[DataHolder sharedInstance].age,[DataHolder sharedInstance].name);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
