//
//  SeaView.h
//  Masc
//
//  Created by 7937 on 2016/12/13.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SeaView : UIView

@property(nonatomic, strong) SeaView *seaView;
@property(nonatomic, strong) NSMutableArray *seaArr;

- (void)addSeaViewToArray:(id)view;

- (id)initSeaView:(CGRect )frame;



@end
