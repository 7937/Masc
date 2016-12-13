//
//  ForestView.m
//  Masc
//
//  Created by 7937 on 2016/12/12.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ForestView.h"
#import "ViewConfig.h"

@implementation ForestView

@synthesize age;
@synthesize forestView;
@synthesize forestArr;

static dispatch_once_t initArray;

- (id)initForestView:(CGRect )frame{
    forestView = [[ForestView alloc]initWithFrame:frame];
//    forestView.backgroundColor = [UIColor greenColor];
    forestView.layer.borderWidth = 1;
    
    NSString *type = [[NSBundle mainBundle]pathForResource:@"forest" ofType:@"png"];
    UIImage *image = [UIImage imageWithContentsOfFile:type];
    forestView.layer.contents = (id)image.CGImage;
    return forestView;
}

- (void)addForestViewToArray:(id)view{
    dispatch_once(&initArray, ^{
        forestArr = [[NSMutableArray alloc]init];
    });
    [forestArr addObject:view];
    NSLog(@"forest %ld",forestArr.count);
    NSLog(@"forest %@",forestArr);
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"touch forest!");
}





@end
