//
//  DragButton.m
//  Infrared machine
//
//  Created by iosDeveloper on 15/6/10.
//  Copyright (c) 2015年 恒众鑫智能技术. All rights reserved.
//

#import "DragButton.h"

@implementation DragButton

//与y轴实时角度（逆时针方向），用于在拖动时候确定DragImageView的中心
@synthesize current_radian;

//记录该位置初始的角度（与y轴）
@synthesize current_animation_radian;

//与x轴实时角度 用于DragImageView拖动停止后的旋转
@synthesize animation_radian;

//记录该位置初始角度（与x轴）
@synthesize radian;

//DragImageView的中心
@synthesize view_point;

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        
        
    }
    
    return self;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
