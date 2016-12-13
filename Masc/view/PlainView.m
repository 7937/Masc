//
//  PlainView.m
//  Masc
//
//  Created by 7937 on 2016/12/13.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "PlainView.h"

@implementation PlainView

@synthesize plainView;
@synthesize plainArr;

- (id)initPlainView:(CGRect)frame{
    plainView = [[PlainView alloc]initWithFrame:frame];
    plainView.layer.borderWidth = 1;
    
    NSString *path = [[NSBundle mainBundle]pathForResource:@"plain"ofType:@"png"];
    UIImage *image = [UIImage imageWithContentsOfFile:path];
    plainView.layer.contents = (id)image.CGImage;
    
    return plainView;
    
}

- (void)addPlainViewToArray:(id)view{
    plainArr= [[NSMutableArray alloc]init];
    [plainArr addObject:view];
    NSLog(@"plain %ld",plainArr.count);
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"touch plain!");
}

@end
