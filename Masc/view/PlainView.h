//
//  PlainView.h
//  Masc
//
//  Created by 7937 on 2016/12/13.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlainView : UIView

@property(nonatomic, strong) PlainView *plainView;
@property(nonatomic, strong) NSMutableArray *plainArr;

- (void)addPlainViewToArray:(id)view;

- (id)initPlainView:(CGRect )frame;


@end
