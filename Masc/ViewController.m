//
//  ViewController.m
//  Masc
//
//  Created by 7937 on 2016/12/9.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import "ViewConfig.h"

#import "ForestView.h"
#import "RoadView.h"
#import "MineView.h"
#import "SeaView.h"
#import "PlainView.h"

@interface ViewController ()
{
    ForestView *forestView;
}

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    [self generate];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)generate{
    int i;
    int j;
    
//forest init
    for (i = 0; i<2 ; i++) {
        for (j = 0; j<5; j++) {
            forestView = [[ForestView alloc]initForestView:CGRectMake(i* widthOfEachGrid, j*heightOfEachGrid, widthOfEachGrid, heightOfEachGrid)];
            [self.view addSubview:forestView];
            [forestView addForestViewToArray:forestView];
            
        }
    }
    
    for (i = 2; i<4; i++) {
            forestView = [[ForestView alloc]initForestView:CGRectMake(i* widthOfEachGrid, 0, widthOfEachGrid, heightOfEachGrid)];
            [self.view addSubview:forestView];
            [forestView addForestViewToArray:forestView];
        }
    
    for (i = 2; i<5; i++) {
        forestView = [[ForestView alloc]initForestView:CGRectMake(i* widthOfEachGrid, 4*heightOfEachGrid, widthOfEachGrid, heightOfEachGrid)];
        [self.view addSubview:forestView];
        [forestView addForestViewToArray:forestView];
    }

//road init
    for (i = 4; i<6; i++) {
        RoadView *roadView = [[RoadView alloc]initRoadView:CGRectMake(i* widthOfEachGrid, 0, widthOfEachGrid, heightOfEachGrid)];
        [self.view addSubview:roadView];
        [roadView addRoadViewToArray:roadView];
    }
    
//mine init
    for (i = 6; i<8; i++) {
         MineView *mineView = [[MineView alloc]initMineView:CGRectMake(i* widthOfEachGrid, 0, widthOfEachGrid, heightOfEachGrid)];
        [self.view addSubview:mineView];
        [mineView addMineViewToArray:mineView];
    }
    
    for (i = 8; i<10 ; i++) {
        for (j = 0; j<3; j++) {
            MineView *mineView = [[MineView alloc]initMineView:CGRectMake(i* widthOfEachGrid, j*heightOfEachGrid, widthOfEachGrid, heightOfEachGrid)];
            [self.view addSubview:mineView];
            [mineView addMineViewToArray:mineView];
        }
    }

//sea init
    for (i = 5; i<8; i++) {
         SeaView *seaView = [[SeaView alloc]initSeaView:CGRectMake(i* widthOfEachGrid, 4* heightOfEachGrid, widthOfEachGrid, heightOfEachGrid)];
        [self.view addSubview:seaView];
        [seaView addSeaViewToArray:seaView];
    }
    
    for (i = 8; i<10 ; i++) {
        for (j = 3; j<5; j++) {
            SeaView *seaView = [[SeaView alloc]initSeaView:CGRectMake(i* widthOfEachGrid, j*heightOfEachGrid, widthOfEachGrid, heightOfEachGrid)];
            [self.view addSubview:seaView];
            [seaView addSeaViewToArray:seaView];
        }
    }


//plain init
    for (i = 2; i<8 ; i++) {
        for (j = 1; j<4; j++) {
             PlainView *plainView = [[PlainView alloc]initPlainView:CGRectMake(i* widthOfEachGrid, j*heightOfEachGrid, widthOfEachGrid, heightOfEachGrid)];
            [self.view addSubview:plainView];
            [plainView addPlainViewToArray:plainView];
    }
}

}


@end
