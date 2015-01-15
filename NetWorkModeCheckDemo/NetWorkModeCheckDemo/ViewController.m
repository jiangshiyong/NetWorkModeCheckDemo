//
//  ViewController.m
//  NetWorkModeCheckDemo
//
//  Created by jiangshiyong on 15/1/15.
//  Copyright (c) 2015年 jiangshiyong. All rights reserved.
//

#import "ViewController.h"
#import "NetWorkModeCheck.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}


- (IBAction)checkNetworkModelButtonClicked:(id)sender {
    
    if ([NetWorkModeCheck dataNetworkTypeFromStatusBar]==NETWORK_TYPE_NONE) {
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"当前网络模式"
                                                        message:@"UNKNOWN"
                                                       delegate:nil
                                              cancelButtonTitle:nil
                                              otherButtonTitles:@"确定", nil];
        [alert show];
    }else if ([NetWorkModeCheck dataNetworkTypeFromStatusBar]==NETWORK_TYPE_2G){
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"当前网络模式"
                                                        message:@"2G"
                                                       delegate:nil
                                              cancelButtonTitle:nil
                                              otherButtonTitles:@"确定", nil];
        [alert show];
    }else if ([NetWorkModeCheck dataNetworkTypeFromStatusBar]==NETWORK_TYPE_3G){
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"当前网络模式"
                                                        message:@"3G"
                                                       delegate:nil
                                              cancelButtonTitle:nil
                                              otherButtonTitles:@"确定", nil];
        [alert show];
    }else if ([NetWorkModeCheck dataNetworkTypeFromStatusBar]==NETWORK_TYPE_4G){
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"当前网络模式"
                                                        message:@"4G"
                                                       delegate:nil
                                              cancelButtonTitle:nil
                                              otherButtonTitles:@"确定", nil];
        [alert show];
    }else if ([NetWorkModeCheck dataNetworkTypeFromStatusBar]==NETWORK_TYPE_LTE){
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"当前网络模式"
                                                        message:@"LTE"
                                                       delegate:nil
                                              cancelButtonTitle:nil
                                              otherButtonTitles:@"确定", nil];
        [alert show];
    }else if ([NetWorkModeCheck dataNetworkTypeFromStatusBar]==NETWORK_TYPE_WIFI){
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"当前网络模式"
                                                        message:@"WIFI"
                                                       delegate:nil
                                              cancelButtonTitle:nil
                                              otherButtonTitles:@"确定", nil];
        [alert show];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
