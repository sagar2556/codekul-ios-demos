//
//  ViewController.m
//  AdvanceControls
//
//  Created by shaggy on 18/10/16.
//  Copyright © 2016 shaggy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIDatePicker *myDatePicker = [[UIDatePicker alloc] initWithFrame:CGRectMake(10, 30, 300, 200)];
    [myDatePicker setDatePickerMode:UIDatePickerModeDate];
    
    [myDatePicker addTarget:self action:@selector(datePicked:) forControlEvents:UIControlEventValueChanged];
    
    
    [self.view addSubview:myDatePicker];
}

-(void) datePicked: (UIDatePicker *) sender {
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"dd-MM-yyyy"];
    NSLog(@"selected date : %@", [dateFormatter stringFromDate:sender.date]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
