//
//  ViewController.m
//  ParallaxScrollingDemo
//
//  Created by 宋锡铭 on 2018/9/27.
//  Copyright © 2018年 song ximing. All rights reserved.
//

#import "ViewController.h"
#import "HorseScrollview.h"

@interface ViewController ()<UIScrollViewDelegate>
@property (nonatomic, strong) UIScrollView *bgScrollView;
@property (nonatomic, strong) UIScrollView *horseScrollView;
@property (nonatomic, strong) UIScrollView *grassScrollView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addScrollView];
}


- (void)addScrollView {

    self.bgScrollView = [self scrollViweImage:@"首页-第一层"];
    
    self.horseScrollView =  [self scrollViweImage:@"首页-第三层"];
    UIButton *unitBtn = [[UIButton alloc] initWithFrame:CGRectMake(300, self.horseScrollView.bounds.size.height - 300, 100, 100)];
    [self.horseScrollView addSubview:unitBtn];
    unitBtn.backgroundColor = [UIColor orangeColor];
    [unitBtn addTarget:self action:@selector(unitClick) forControlEvents:UIControlEventTouchUpInside];
    
    
    self.grassScrollView = [self scrollViweImage:@"首页-第七层"];
    self.grassScrollView.delegate = self;
    
    UIButton *grassBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, self.grassScrollView.bounds.size.height - 100, 100, 100)];
    [self.grassScrollView addSubview:grassBtn];
    [grassBtn addTarget:self action:@selector(grassBtnClick) forControlEvents:UIControlEventTouchUpInside];
    grassBtn.backgroundColor = [UIColor greenColor];
    
}

- (void)unitClick {
    NSLog(@"点击单元");
}

- (void)grassBtnClick {
    NSLog(@"点击草,路灯");
}


- (UIScrollView *)scrollViweImage:(NSString *)imageName {
    UIScrollView *scroll = [[HorseScrollview alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:scroll];
    
    UIImage *bgImage = [UIImage imageNamed:imageName];
    CGFloat screenH = scroll.bounds.size.height;
    CGFloat imgW = bgImage.size.width / bgImage.size.height * screenH;
    
    UIImageView *img = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, imgW, scroll.bounds.size.height)];
    [scroll addSubview:img];
    img.image = bgImage;
    
    scroll.contentSize = CGSizeMake(imgW, 0);
    
//    scroll.delegate = self;
    
    return scroll;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
    CGFloat offsetX = scrollView.contentOffset.x;
    
    self.horseScrollView.contentOffset = CGPointMake(offsetX * 0.8, scrollView.contentOffset.y);
    self.bgScrollView.contentOffset = CGPointMake(offsetX * 0.5, scrollView.contentOffset.y);
}

@end
