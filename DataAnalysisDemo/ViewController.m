//
//  ViewController.m
//  DataAnalysisDemo
//
//  Created by 蔡杰 on 2017/7/25.
//  Copyright © 2017年 蔡杰. All rights reserved.
//

#import "ViewController.h"
#import "MLAnalysis.h"
@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *testButton;

@property (weak, nonatomic) IBOutlet UIImageView *testImageView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc]  initWithTarget:self action:@selector(testTapAction:)];
    [_testImageView addGestureRecognizer:tap];
    _testImageView.userInteractionEnabled = YES;
    tap.eventKey = @"1+122346";

}
- (IBAction)testAction:(id)sender {
    NSLog(@"点击 Button");
}

- (IBAction)testTapAction:(id)sender {
    NSLog(@"点击 testTapAction");
  

    
     NSLog(@"222点击 testTapAction");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
