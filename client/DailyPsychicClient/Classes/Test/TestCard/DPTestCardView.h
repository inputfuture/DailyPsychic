//
//  DPTestCardView.h
//  DailyPsychicClient
//
//  Created by zhanghe on 2018/1/30.
//  Copyright © 2018年 h. All rights reserved.
//

#import "AFBaseTableView.h"

@protocol DPTestCardViewDelegate <NSObject>

@optional
- (void)SelectedAnswer;

@end

@interface DPTestCardView : AFBaseTableView

@property (nonatomic,weak) id<DPTestCardViewDelegate>testCardDelegate;


@end
