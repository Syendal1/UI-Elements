//
//  MapController.m
//  Hw1
//
//  Created by SnehithNitin on 8/1/16.
//  Copyright © 2016 Snehith. All rights reserved.
//

#import "MapController.h"

@interface MapController (){
    MKMapView *mapView;
    CLLocationManager *locationManager;
}



@end

@implementation MapController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    mapView.delegate=self;
    mapView=[[MKMapView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height-110)];
    mapView.showsUserLocation=true;
    
    locationManager=[[CLLocationManager alloc]init];
    locationManager.distanceFilter=kCLDistanceFilterNone;
    locationManager.desiredAccuracy=kCLLocationAccuracyHundredMeters;
    [locationManager startUpdatingLocation];
    
    NSLog(@"%@",[self deviceLocation]);

 
    [self.view addSubview:mapView];
    
 
    NSArray *arr=@[@"Standard",@"Satellite",@"Hybrid"];
    UISegmentedControl *segment=[[UISegmentedControl alloc] initWithItems:arr];
    segment.frame=CGRectMake(10, self.view.frame.size.height - 100, self.view.frame.size.width-30,40);
    segment.tintColor=[UIColor orangeColor];
    segment.layer.cornerRadius=7;
    segment.backgroundColor=[UIColor purpleColor];
    [segment addTarget:self action:@selector(segmentvaluechanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:segment];
}

- (NSString *)deviceLocation {
    return [NSString stringWithFormat:@"latitude: %f longitude: %f", locationManager.location.coordinate.latitude, locationManager.location.coordinate.longitude];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-(void)viewDidAppear:(BOOL)animated{
//    mapView.showsUserLocation=true;
//}

-(void)segmentvaluechanged:(UISegmentedControl*)segment{
    if (segment.selectedSegmentIndex==0) {
        mapView.mapType=MKMapTypeStandard;
    }
    if (segment.selectedSegmentIndex==1) {
        mapView.mapType=MKMapTypeSatellite;    }
    if (segment.selectedSegmentIndex==2) {
        mapView.mapType=MKMapTypeHybrid;
    }
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
