//
//  MapController.h
//  Hw1
//
//  Created by SnehithNitin on 8/1/16.
//  Copyright © 2016 Snehith. All rights reserved.
//

#import <UIKit/UIKit.h>
#include <MapKit/MapKit.h>
#include <CoreData/CoreData.h>

@interface MapController : UIViewController<MKMapViewDelegate, CLLocationManagerDelegate>


@property(nonatomic, retain) IBOutlet MKMapView *mapView;
@property(nonatomic, retain) CLLocationManager *locationManager;


@end
