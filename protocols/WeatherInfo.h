//
//  WeatherInfo.h
//  weatherapp
//
//  Created by Rodrigo José Sánchez Segovia on 04/08/23.
//
@protocol WeatherInfo <NSObject>

@property (nonatomic, assign) NSString * main;
@property (nonatomic, assign) NSString * description;
@property (nonatomic, assign) NSString * icon;

@end
