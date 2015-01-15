//
//  NetWorkModeCheck.h
//  TPO
//
//  Created by jiangshiyong on 15/1/14.
//  Copyright (c) 2015年 jiangshiyong. All rights reserved.
//  判断网络模式

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef enum {
  
    NETWORK_TYPE_NONE= 0,
    
    NETWORK_TYPE_2G= 1,
    
    NETWORK_TYPE_3G= 2,
    
    NETWORK_TYPE_4G= 3,
    
    NETWORK_TYPE_LTE= 4,
    
    NETWORK_TYPE_WIFI= 5,
}NETWORK_TYPE;

@interface NetWorkModeCheck : NSObject

+ (NETWORK_TYPE)dataNetworkTypeFromStatusBar;

@end
