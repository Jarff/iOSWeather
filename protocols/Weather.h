//
//  Weather.h
//  weatherapp
//
//  Created by Rodrigo José Sánchez Segovia on 04/08/23.
//
#import "Coordinate.h"

@protocol Weather <NSObject>

@property (nonatomic, assign) Coordinate coordinate;
@property (nonatomic, assign) UInt32 sunrise;
@property (nonatomic, assign) UInt32 sunset;
@property (nonatomic, assign) double temperature;
@property (nonatomic, assign) double feelsLike;
@property (nonatomic, assign) UInt32 pressure;
@property (nonatomic, assign) UInt32 humidity;
@property (nonatomic, assign) WeatherInfo info;
@property (nonatomic, strong) NSArray<NSDictionary *> *alerts;

@end
