//
//  ProtocolClass.m
//  Webservice Sample
//
//  Created by Abdul Kareem on 1/14/15.
//  Copyright (c) 2015 MapletMobile. All rights reserved.
//

#import "ProtocolClass.h"

@implementation ProtocolClass
@synthesize delegate;
-(void)startProcess
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:@"http://www.raywenderlich.com/demos/weather_sample/weather.php?format=json" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        //NSLog(@"JSON: %@", responseObject);
        
        [self endProcess:responseObject];
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}

-(void)endProcess :(id)response
{
    [self.delegate processSuccessful:response];
}
@end
