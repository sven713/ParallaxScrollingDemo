//
//  HorseScrollview.m
//  ParallaxScrollingDemo
//
//  Created by 宋锡铭 on 2018/9/27.
//  Copyright © 2018年 song ximing. All rights reserved.
//

#import "HorseScrollview.h"

@implementation HorseScrollview

//-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
//     UIView *viewReturn =[super hitTest:point withEvent:event];
//    if ([viewReturn isKindOfClass:[UIButton class]]) {
//        return viewReturn;
//    }
//    else if (viewReturn == self){ //isKindOfClass:[UIScrollView class]
//        return viewReturn;
//    }
//
//    else {
//        return nil;
//    }
//
//}


//- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
//    BOOL next = YES;
//    for (UIView *view in self.subviews) {
//        if ([view isKindOfClass:[UIControl class]]) {
//            if (CGRectContainsPoint(view.frame, point)){
//                next = NO;
//                break;
//            }
//        }
//    }
//    return !next;
//}




@end
