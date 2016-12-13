//
//  SeaView.m
//  Masc
//
//  Created by 7937 on 2016/12/13.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "SeaView.h"

@implementation SeaView

@synthesize seaView;
@synthesize seaArr;

- (id)initSeaView:(CGRect)frame{
    seaView = [[SeaView alloc]initWithFrame:frame];
    seaView.layer.borderWidth = 1;
    
    NSString *path = [[NSBundle mainBundle]pathForResource:@"sea"ofType:@"png"];
    UIImage *image = [UIImage imageWithContentsOfFile:path];
    seaView.layer.contents = (id)image.CGImage;
    
    return seaView;
    
}

- (void)addSeaViewToArray:(id)view{
    seaArr= [[NSMutableArray alloc]init];
    [seaArr addObject:view];
    NSLog(@"sea %ld",seaArr.count);
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"touch sea!");
}


@end
