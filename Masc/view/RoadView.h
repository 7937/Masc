//
//  RoadView.h
//  Masc
//
//  Created by 7937 on 2016/12/13.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RoadView : UIView

@property(nonatomic, strong) RoadView *roadView;
@property(nonatomic, strong) NSMutableArray *roadArr;

- (void)addRoadViewToArray:(id)view;

- (id)initRoadView:(CGRect )frame;

@end
