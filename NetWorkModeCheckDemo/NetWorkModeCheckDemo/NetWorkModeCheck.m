//
//  NetWorkModeCheck.m
//  TPO
//
//  Created by jiangshiyong on 15/1/14.
//  Copyright (c) 2015年 jiangshiyong. All rights reserved.
//

#import "NetWorkModeCheck.h"

@implementation NetWorkModeCheck

+ (NETWORK_TYPE)dataNetworkTypeFromStatusBar {
    
    UIApplication *app = [UIApplication sharedApplication];
    NSArray *subviews = [[[app valueForKey:@"statusBar"]valueForKey:@"foregroundView"] subviews];
    NSNumber *dataNetworkItemView = nil;
    for (id subview in subviews) {
        
        if([subview isKindOfClass:[NSClassFromString(@"UIStatusBarDataNetworkItemView") class]]) {
            dataNetworkItemView = subview;
            break;
        }
    }
    
    NETWORK_TYPE netType = NETWORK_TYPE_NONE;
    NSNumber *num = [dataNetworkItemView valueForKey:@"dataNetworkType"];
    //NSLog(@"dataNetworkType====%d",[num intValue]);
    if (num == nil) {
        
        netType = NETWORK_TYPE_NONE;
    }else{
        
        int n = [num intValue];
        if (n == 0) {
            
            netType = NETWORK_TYPE_NONE;
        }else if (n==1){
            
            netType = NETWORK_TYPE_2G;
        }else if (n==2){
            
            netType = NETWORK_TYPE_3G;
        }else if (n==3){
            
            netType = NETWORK_TYPE_4G;
        }else if (n==4){
            
            netType = NETWORK_TYPE_LTE;
        }else if (n==5){
            
            netType = NETWORK_TYPE_WIFI;//5
        }else{
            
            netType = NETWORK_TYPE_WIFI;
        }
    }
    return netType;
}

@end
