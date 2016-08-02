//
//  ActivityIndicatorVC.m
//  Hw1
//
//  Created by SnehithNitin on 8/1/16.
//  Copyright © 2016 Snehith. All rights reserved.
//

#import "ActivityIndicatorVC.h"

@interface ActivityIndicatorVC (){

    UIView *myView;
    UIActivityIndicatorView *activityInd;
}
@end

@implementation ActivityIndicatorVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor=[UIColor redColor];
    
    
    myView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:myView];
    myView.backgroundColor=[UIColor orangeColor];
    
    activityInd=[[UIActivityIndicatorView alloc]initWithFrame:CGRectMake(100, 150, 50, 50)];
    [myView addSubview:activityInd];
    [activityInd startAnimating];
    
    [self performSelector:@selector(callThisMethod) withObject:nil afterDelay:5.0];

}

-(void)callThisMethod{
    [activityInd stopAnimating];
    myView.hidden=true;
    
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
