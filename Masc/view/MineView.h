//
//  MineView.h
//  Masc
//
//  Created by 7937 on 2016/12/13.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MineView : UIView

@property(nonatomic, strong) MineView *mineView;
@property(nonatomic, strong) NSMutableArray *mineArr;

- (void)addMineViewToArray:(id)view;

- (id)initMineView:(CGRect )frame;


@end
