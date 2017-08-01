//  weibo: http://weibo.com/xiaoqing28
//  blog:  http://www.alonemonkey.com
//
//  MonkeyPod.m
//  MonkeyPod
//
//  Created by monkey on 2017/8/1.
//  Copyright (c) 2017年 Coder. All rights reserved.
//

#import "MonkeyPod.h"
#import "CaptainHook.h"
#import <UIKit/UIKit.h>

CHDeclareClass(CustomViewController)

CHOptimizedMethod(0, self, NSString*, CustomViewController,getMyName){
    return @"MonkeyDevPod";
}

CHConstructor{
    CHLoadLateClass(CustomViewController);
    CHClassHook(0, CustomViewController, getMyName);
}
