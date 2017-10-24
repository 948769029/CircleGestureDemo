//
//  CircleView.h
//  Infrared machine
//
//  Created by iosDeveloper on 15/6/10.
//  Copyright (c) 2015年 恒众鑫智能技术. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CircleView : UIView<UIGestureRecognizerDelegate>{
    
@private
    //圆的半径
    CGFloat radius;
    //圆心（在CircleView上的位置）
    CGPoint center;
    //平均角度
    CGFloat average_radina;
    //拖动的点
    CGPoint pointDrag;
    //拖动结束后间隔的个数
    NSInteger step;
}

@property(nonatomic, retain) NSMutableArray *arrImages;

- (void)loadView;

- (void)showImage;
- (CGFloat)getRadinaByRadian:(CGFloat)radian;
- (void)addGesture;
- (void)handleSinglePan:(id)sender;
- (void)dragPoint:(CGPoint)dragPoint movePoint:(CGPoint)movePoint centerPoint:(CGPoint)centerPoint;
- (void)reviseCirclePoint;
- (void)animateWithDuration:(CGFloat)time animateDelay:(CGFloat)delay changeIndex:(NSInteger)change_index toIndex:(NSInteger)to_index circleArray:(NSMutableArray *)array clockwise:(BOOL)is_clockwise;

@end
