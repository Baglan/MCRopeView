//
//  ViewController.m
//  MCRopeView
//
//  Created by Baglan on 3/15/13.
//  Copyright (c) 2013 MobileCreators. All rights reserved.
//

#import "ViewController.h"
#import "MCRopeView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CGPoint fromRed = CGPointMake(_redSquareLabel.frame.origin.x + _redSquareLabel.frame.size.width + 2.0, _redSquareLabel.frame.origin.y + _redSquareLabel.frame.size.height / 2.0);
    CGPoint toRed = CGPointMake(_redSquareView.frame.origin.x - 2.0, _redSquareView.frame.origin.y + _redSquareView.frame.size.height / 2.0);
    [self.view addSubview:[[MCRopeView alloc] initWithStartPoint:fromRed endPoint:toRed]];

    CGPoint fromBlue = CGPointMake(_blueSquareLabel.frame.origin.x - 10.0, _blueSquareLabel.frame.origin.y + _blueSquareLabel.frame.size.height / 2.0);
    CGPoint toBlue = CGPointMake(_blueSquareView.frame.origin.x + _blueSquareView.frame.size.width + 10.0, _blueSquareView.frame.origin.y + _blueSquareView.frame.size.height / 2.0);
    [self.view addSubview:[[MCRopeView alloc] initWithStartPoint:fromBlue endPoint:toBlue lineWidth:5 lineColor:[UIColor redColor] outlineColor:[UIColor grayColor]]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
