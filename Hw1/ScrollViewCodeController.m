//
//  ScrollViewCodeController.m
//  Hw1
//
//  Created by SnehithNitin on 8/1/16.
//  Copyright © 2016 Snehith. All rights reserved.
//

#import "ScrollViewCodeController.h"

@interface ScrollViewCodeController ()

@end

@implementation ScrollViewCodeController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor greenColor];
    UIScrollView *scrollView=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    UITextView *textView=[[UITextView alloc]initWithFrame:CGRectMake(0, 20, scrollView.frame.size.width, scrollView.frame.size.height)];
    [scrollView addSubview:textView];
    textView.backgroundColor=[UIColor grayColor];
    
    [self.view addSubview:scrollView];
    
    
    // Do any additional setup after loading the view.
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
