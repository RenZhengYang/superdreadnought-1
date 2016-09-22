//
//  ViewController.m
//  superdreadnought-1
//
//  Created by mac on 16/9/22.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

/*
 * 超文本连接地址按钮   样式 ①
 */
@property (weak, nonatomic) IBOutlet UIButton *urlBtn;
/*
 * 超文本连接地址按钮   样式 ②
 */
@property (weak, nonatomic) IBOutlet UIButton *qqBtn;
/*
 * 显示webView
 */
@property (weak, nonatomic) IBOutlet UIWebView *showWebView;
@end

@implementation ViewController

- (IBAction)openBD:(id)sender {

    NSString *a = [NSString stringWithFormat:@"http://%@",_urlBtn.titleLabel.text];
    NSURL *url = [NSURL URLWithString:a];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [_showWebView loadRequest:request];


}
- (IBAction)openQQ:(id)sender {
    NSString *a = [NSString stringWithFormat:@"http://%@",_qqBtn.titleLabel.text];
    NSURL *url = [NSURL URLWithString:a];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [_showWebView loadRequest:request];
   
    _qqBtn.titleLabel.textColor = [UIColor redColor];

}


@end
