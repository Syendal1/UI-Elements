//
//  ActivityIndicatorVC.m
//  Hw1
//
//  Created by SnehithNitin on 8/1/16.
//  Copyright © 2016 Snehith. All rights reserved.
//

#import "ActivityIndicatorVC.h"

@interface ActivityIndicatorVC ()

@end

@implementation ActivityIndicatorVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    UIView *myView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:myView];
    
    UIActivityIndicatorView *activityInd=[[UIActivityIndicatorView alloc]init];

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
