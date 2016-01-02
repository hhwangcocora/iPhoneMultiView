//
//  ViewController.m
//  CodeWithChrisSingleView
//
//  Created by Huihong Wang on 12/31/15.
//  Copyright © 2015 Huihong Wang. All rights reserved.
//

#import "ViewController.h"

#import "LocationController.h"
#import "Location.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    /*UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 200, 50)];
    label.text = @"Hello World";
    
    [self.view addSubview:label];*/
}

- (void)viewDidAppear:(BOOL)animated
{
    Location* location = [[[LocationController alloc]init]getMapLocation];
    self.imageView.contentMode = UIViewContentModeScaleAspectFill;
    self.imageView.clipsToBounds = YES;
    [self.imageView setImage:[UIImage imageNamed:location.mapImage]];
    self.locationLabel.text = location.locationName;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
- (IBAction)changeTextButtonClicked:(id)sender {
    self.textLabel.text = self.textInputField.text;
    [self.textInputField resignFirstResponder];
    self.textInputField.text = @"";
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.textInputField resignFirstResponder];
}
 */

@end
