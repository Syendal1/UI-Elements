//
//  PickerViewController.m
//  Hw1
//
//  Created by SnehithNitin on 7/31/16.
//  Copyright © 2016 Snehith. All rights reserved.
//

#import "PickerViewController.h"

@interface PickerViewController (){
    NSArray *pickerViewArray;
    UILabel *label;
    UIView *colorView;
    UIPickerView *pickerView;
    
}

@end


@implementation PickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor grayColor];
    
    colorView=[[UIView alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height-300, self.view.frame.size.width, 250)];
    colorView.backgroundColor=[UIColor blackColor];
    [self.view addSubview:colorView];
    
    label=[[UILabel alloc]initWithFrame:CGRectMake(0, 200, self.view.frame.size.width, 80)];
    label.text=@"Black";
    [self.view addSubview:label];
    
    pickerView=[[UIPickerView alloc]initWithFrame:CGRectMake(0, 50, self.view.frame.size.width, 100)];
    [self.view addSubview:pickerView];

    
    pickerView.delegate=self;
    pickerView.dataSource=self;
    
    pickerViewArray=@[@"Black",@"Red",@"Blue",@"Orange"];
   
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    NSString *colorPicked=[pickerViewArray objectAtIndex:row];
    label.text=colorPicked;
    if([colorPicked isEqualToString:@"Black"]){
                colorView.backgroundColor=[UIColor blackColor];
            }
            if([colorPicked isEqualToString:@"Red"]){
                colorView.backgroundColor=[UIColor redColor];
            }
            if([colorPicked isEqualToString:@"Blue"]){
                colorView.backgroundColor=[UIColor blueColor];
            }
            if([colorPicked isEqualToString:@"Orange"]){
                colorView.backgroundColor=[UIColor orangeColor];
            }
    
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return pickerViewArray.count;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return pickerViewArray[row];
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
