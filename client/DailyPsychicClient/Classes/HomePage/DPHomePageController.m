//
//  DPHomePageController.m
//  DailyPsychicClient
//
//  Created by zhanghe on 2018/1/23.
//  Copyright © 2018年 h. All rights reserved.
//

#import "DPHomePageController.h"
#import "DPHomePageView.h"
#import "DPSelectConstellationController.h"

@interface DPHomePageController ()<DPHomePageViewDelegate>
{
    DPHomePageView *m_pHomePageView;
}
@end

@implementation DPHomePageController

- (void)viewDidLoad {
    [super viewDidLoad];
    m_pTopBar.hidden = YES;
    m_pHomePageView = [[DPHomePageView alloc]initWithFrame:CGRectMake(0, 0, self.view.width, self.view.height)];
    m_pHomePageView.homePageDel = self;
    [self.view addSubview:m_pHomePageView];
    
}

- (void)PushToDetailByPageNumber:(NSInteger)pageNumber{
    if (pageNumber == 1) {
        DPSelectConstellationController *selectVc = [[DPSelectConstellationController alloc]init];
        [self PushChildViewController:selectVc animated:YES];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
