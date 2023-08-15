//
//  Coordinate.h
//  weatherapp
//
//  Created by Rodrigo José Sánchez Segovia on 04/08/23.
//

@protocol Coordinate <NSObject>

@property (nonatomic, readonly) double latitude;
@property (nonatomic, readonly) double longitude;

- (void)setLatitude:(double)latitude;
- (void)setLongitude:(double)longitude;

@end
