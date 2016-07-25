//
//  ViewController.m
//  Hw1
//
//  Created by SnehithNitin on 7/24/16.
//  Copyright © 2016 Snehith. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor orangeColor];
    
    UITextField *textField=[[UITextField alloc]init];
    textField.frame=CGRectMake(50,50, 250, 40);
    textField.backgroundColor=[UIColor yellowColor];
    textField.placeholder=@"TextField";
    [self.view addSubview:textField];
    
    UILabel *label=[[UILabel alloc]init];
    label.frame=CGRectMake(50, 100, 250, 40);
    label.backgroundColor=[UIColor redColor];
    label.text=@"Label";
    [self.view addSubview:label];
    
    UIButton *button=[[UIButton alloc]init];
    button.frame=CGRectMake(50, 150, 250, 40);
    button.backgroundColor=[UIColor blueColor];
    [button setTitle:@"Button" forState:UIControlStateNormal];
    [self.view addSubview:button];
    
    UISwitch *switchEg=[[UISwitch alloc]initWithFrame:CGRectMake(50, 200, 250, 40)];
    switchEg.tintColor=[UIColor blackColor];
    switchEg.onTintColor=[UIColor yellowColor];
    switchEg.thumbTintColor=[UIColor purpleColor];
    [switchEg addTarget:self action:@selector(switchValChanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:switchEg];
    
    UISlider *slider=[[UISlider alloc]initWithFrame:CGRectMake(50, 250, 250, 40)];
    slider.minimumValue=0;
    slider.maximumValue=100;
    [slider addTarget:self action:@selector(sliderValChanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:slider];
    
    UIImageView *imgView=[[UIImageView alloc]initWithFrame:CGRectMake(50, 300, 250, 200)];
    imgView.image=[UIImage imageNamed:@"Pikachu"];
    [self.view addSubview:imgView];
    
    NSArray *arr=@[@"Black",@"Red",@"White"];
    UISegmentedControl *segment=[[UISegmentedControl alloc] initWithItems:arr];
    segment.frame=CGRectMake(50, 510, 250,40);
    segment.backgroundColor=[UIColor whiteColor];
    segment.tintColor=[UIColor orangeColor];
    segment.layer.cornerRadius=7;
    segment.backgroundColor=[UIColor purpleColor];
    [segment addTarget:self action:@selector(segmentvaluechanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:segment];
    
    UIStepper *stepper=[[UIStepper alloc]initWithFrame:CGRectMake(50, 560, 250, 40)];
    [self.view addSubview:stepper];
    
//    UIActivityIndicatorView *actIndicator=[[UIActivityIndicatorView alloc]initWithFrame:CGRectMake(50, 610, 250, 40)];
//    [self.view addSubview:actIndicator];
}


-(void)switchValChanged:(UISwitch *)switchEg{
    if(switchEg.on==true){
        NSLog(@"Switch is On");
    }else{
        NSLog(@"Switch is OFF");
    }
}
    
-(void)sliderValChanged:(UISlider *)slider{
    NSLog(@"Slider value is %f",slider.value);
}

-(void)segmentvaluechanged:(UISegmentedControl*)segment{
    if (segment.selectedSegmentIndex==0) {
        NSLog(@"Segment Val Changed");
    }
    if (segment.selectedSegmentIndex==1) {
        NSLog(@"Segment Val Changed");
    }
    if (segment.selectedSegmentIndex==2) {
          NSLog(@"Segment Val Changed");
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
