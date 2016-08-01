//
//  PickerViewController.m
//  Hw1
//
//  Created by SnehithNitin on 7/31/16.
//  Copyright © 2016 Snehith. All rights reserved.
//

#import "PickerViewController.h"

@interface PickerViewController ()

@end

NSArray *pickerViewArray;

@implementation PickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _colorPicker.delegate=self;
    _colorPicker.dataSource=self;
    _colorLabel.text=@"Color";
    _colorView.backgroundColor=[UIColor blackColor];
    
    pickerViewArray=@[@"Red",@"Blue",@"Orange"];
    
}


-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    NSString *colorSelected=[pickerViewArray objectAtIndex:row];
    _colorLabel.text=colorSelected;
    
    if([colorSelected isEqualToString:@"Red"]){
        _colorView.backgroundColor=[UIColor redColor];
    }
    if([colorSelected isEqualToString:@"Blue"]){
        _colorView.backgroundColor=[UIColor blueColor];
    }
    if([colorSelected isEqualToString:@"Orange"]){
        _colorView.backgroundColor=[UIColor orangeColor];
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
