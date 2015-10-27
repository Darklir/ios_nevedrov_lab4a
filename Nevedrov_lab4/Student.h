//
//  Student.h
//  Nevedrov_lab4
//
//  Created by Admin on 27.10.15.
//  Copyright © 2015 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

@property (nonatomic, strong) NSString *first_name;
@property (nonatomic, strong) NSString *last_name;

-(id) initWithFirstName:(NSString *) first_name initWithLastName:(NSString *)last_name;

@end
