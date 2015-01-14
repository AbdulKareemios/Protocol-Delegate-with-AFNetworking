//
//  ViewController.m
//  Webservice Sample
//
//  Created by Abdul Kareem on 1/14/15.
//  Copyright (c) 2015 MapletMobile. All rights reserved.
//

#import "ViewController.h"
#import "ProtocolClass.h"
@interface ViewController ()<ProcessDataDelegate>

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    ProtocolClass *objProtocol =[[ProtocolClass alloc]init];
    [objProtocol setDelegate:self];
    
    [objProtocol startProcess];
}
-(void)processSuccessful:(id)success
{
    NSLog(@"got result %@",success);
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
