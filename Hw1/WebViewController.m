//
//  WebViewController.m
//  Hw1
//
//  Created by SnehithNitin on 7/31/16.
//  Copyright © 2016 Snehith. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController


//-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
//    self=[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if(self){
//        
//    }
//    return self;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIWebView * webView=[[UIWebView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:webView];
    
    NSURL *url=[NSURL URLWithString:@"https://www.youtube.com/"];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    
    [webView loadRequest:request];
    
//    [_webContainer loadRequest:request];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
