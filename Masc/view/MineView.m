//
//  MineView.m
//  Masc
//
//  Created by 7937 on 2016/12/13.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "MineView.h"

@implementation MineView

@synthesize mineView;
@synthesize mineArr;

- (id)initMineView:(CGRect)frame{
    mineView = [[MineView alloc]initWithFrame:frame];
    mineView.layer.borderWidth = 1;
    
    NSString *path = [[NSBundle mainBundle]pathForResource:@"mine"ofType:@"png"];
    UIImage *image = [UIImage imageWithContentsOfFile:path];
    mineView.layer.contents = (id)image.CGImage;
    
    return mineView;
    
}

- (void)addMineViewToArray:(id)view{
    mineArr= [[NSMutableArray alloc]init];
    [mineArr addObject:view];
    NSLog(@"mine %ld",mineArr.count);
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"touch mine!");
}


@end
