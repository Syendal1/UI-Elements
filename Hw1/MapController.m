//
//  MapController.m
//  Hw1
//
//  Created by SnehithNitin on 8/1/16.
//  Copyright © 2016 Snehith. All rights reserved.
//

#import "MapController.h"

@interface MapController (){
//    MKMapView *mapView;
//
    
    CLLocationManager *locationManager;
}



@end

@implementation MapController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _mapView.delegate=self;
    _mapView=[[MKMapView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height-110)];
    [self.view addSubview:_mapView];
 
    
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.delegate = self;
    [self.locationManager requestWhenInUseAuthorization];
    [self.locationManager startUpdatingLocation];
    
    _mapView.showsUserLocation = YES;
    [_mapView setMapType:MKMapTypeStandard];
    [_mapView setZoomEnabled:YES];
    [_mapView setScrollEnabled:YES];
 
    NSArray *arr=@[@"Standard",@"Satellite",@"Hybrid"];
    UISegmentedControl *segment=[[UISegmentedControl alloc] initWithItems:arr];
    segment.frame=CGRectMake(10, self.view.frame.size.height - 100, self.view.frame.size.width-30,40);
    segment.tintColor=[UIColor orangeColor];
    segment.layer.cornerRadius=7;
    segment.backgroundColor=[UIColor purpleColor];
    [segment addTarget:self action:@selector(segmentvaluechanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:segment];
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:YES];
    
    self.locationManager.distanceFilter = kCLDistanceFilterNone;
    self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    [self.locationManager startUpdatingLocation];
//    NSLog(@"%@", [self deviceLocation]);
    
    //View Area
    MKCoordinateRegion region = { { 0.0, 0.0 }, { 0.0, 0.0 } };
    region.center.latitude = self.locationManager.location.coordinate.latitude;
    region.center.longitude = self.locationManager.location.coordinate.longitude;
    region.span.longitudeDelta = 0.005f;
    region.span.longitudeDelta = 0.005f;
    [_mapView setRegion:region animated:YES];
    
}


-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation{
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 800, 800);
    [self.mapView setRegion:[self.mapView regionThatFits:region] animated:YES];

}

- (NSString *)deviceLocation {
    return [NSString stringWithFormat:@"latitude: %f longitude: %f", self.locationManager.location.coordinate.latitude, self.locationManager.location.coordinate.longitude];
}
- (NSString *)deviceLat {
    return [NSString stringWithFormat:@"%f", self.locationManager.location.coordinate.latitude];
}
- (NSString *)deviceLon {
    return [NSString stringWithFormat:@"%f", self.locationManager.location.coordinate.longitude];
}
- (NSString *)deviceAlt {
    return [NSString stringWithFormat:@"%f", self.locationManager.location.altitude];
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
        _mapView.mapType=MKMapTypeStandard;
    }
    if (segment.selectedSegmentIndex==1) {
        _mapView.mapType=MKMapTypeSatellite;    }
    if (segment.selectedSegmentIndex==2) {
        _mapView.mapType=MKMapTypeHybrid;
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
