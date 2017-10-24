//
//  ViewController.m
//  CircleGestureDemo
//
//  Created by apple on 2017/10/24.
//  Copyright © 2017年 张洪健. All rights reserved.
//

#import "ViewController.h"
#import "CircleView.h"
#import "DragButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CircleView *circleView = [[CircleView alloc] initWithFrame:CGRectMake(20, 100, 250, 250)];
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for (NSInteger i = 0; i < 6; i++) {
        DragButton *button = [[DragButton alloc] init];
        button.frame = CGRectMake(0, 0, 100, 100);
        button.layer.cornerRadius = 50;
        button.backgroundColor = [UIColor redColor];
        [button setTitle:[NSString stringWithFormat:@"第%zd个",i] forState:UIControlStateNormal];
        [array addObject:button];
    }
    circleView.arrImages = array;
    [self.view addSubview:circleView];
    [circleView loadView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
