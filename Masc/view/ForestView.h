//
//  ForestView.h
//  Masc
//
//  Created by 7937 on 2016/12/12.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ForestView : UIView

@property (nonatomic,strong) NSNumber *age;
@property (nonatomic,strong) ForestView *forestView;
@property(nonatomic, strong) NSMutableArray *forestArr;

- (void)addForestViewToArray:(id)view;

- (id)initForestView:(CGRect )frame;

@end
