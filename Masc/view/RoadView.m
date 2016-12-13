//
//  RoadView.m
//  Masc
//
//  Created by 7937 on 2016/12/13.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "RoadView.h"

@implementation RoadView

@synthesize roadView;
@synthesize roadArr;

- (id)initRoadView:(CGRect)frame{
    roadView = [[RoadView alloc]initWithFrame:frame];
    roadView.layer.borderWidth = 1;
    
    NSString *path = [[NSBundle mainBundle]pathForResource:@"road"ofType:@"png"];
    UIImage *image = [UIImage imageWithContentsOfFile:path];
    roadView.layer.contents = (id)image.CGImage;
    
    return roadView;
 
}

- (void)addRoadViewToArray:(id)view{
    roadArr = [[NSMutableArray alloc]init];
    [roadArr addObject:view];
    NSLog(@"road %ld",roadArr.count);
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"touch road!");
}



@end
