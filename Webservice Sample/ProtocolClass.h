//
//  ProtocolClass.h
//  Webservice Sample
//
//  Created by Abdul Kareem on 1/14/15.
//  Copyright (c) 2015 MapletMobile. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol ProcessDataDelegate <NSObject>
@required
    -(void)processSuccessful :(id)success;
@end
@interface ProtocolClass : NSObject
{
    id <ProcessDataDelegate> delegate;
}
@property(retain)id <ProcessDataDelegate> delegate;
-(void)startProcess;
@end
